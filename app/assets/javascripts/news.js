var NewsUpdater = function (self) {
    'use strict';

    var newsUpdaterInterval = 30000;

    function renderLocalNewsDate()
    {
        var newsDateEl = document.querySelector('.news-date');
        var timestamp = newsDateEl.dataset['timestamp'];
        newsDateEl.innerHTML = moment.unix(timestamp).format('D MMMM YYYY, HH:mm');
    }

    function updatePageTitle(newsTitle)
    {
        document.querySelector('title').innerHTML = 'Главная новость &mdash; ' + newsTitle;
    }
    
    function updateNews(data)
    {
        document.querySelector('.news-title').innerHTML = data.title;
        document.querySelector('.news-description').innerHTML = data.description;
        document.querySelector('.news-date').dataset['timestamp'] = data.created_at;
        updatePageTitle(data.title);
        renderLocalNewsDate();
    }

    function simpleFetch(method, url, callback)
    {
        var request = new XMLHttpRequest();
        request.open(method, url, true);

        request.onload = function() {
            if (this.status >= 200 && this.status < 400) {
                callback(JSON.parse(this.response));
            }
        };

        request.send();
    }

    function startPollingNews() {
        setInterval(function () {
            simpleFetch('GET', '/.json', updateNews);
        }, newsUpdaterInterval);
    }

    self.init = function () {
        moment.locale('ru');
        renderLocalNewsDate();
        startPollingNews();
    };

    return self;
}(NewsUpdater || {});

if (document.querySelector('.news-container')) {
    NewsUpdater.init();
}
