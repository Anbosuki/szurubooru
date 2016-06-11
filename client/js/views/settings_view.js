'use strict';

const views = require('../util/views.js');

class SettingsView {
    constructor() {
        this._template = views.getTemplate('settings');
    }

    render(ctx) {
        const target = document.getElementById('content-holder');
        const source = this._template({browsingSettings: ctx.getSettings()});

        const form = source.querySelector('form');
        views.decorateValidator(form);

        form.addEventListener('submit', e => {
            e.preventDefault();
            views.clearMessages(source);
            ctx.saveSettings({
                upscaleSmallPosts:
                    form.querySelector('#upscale-small-posts').checked,
                endlessScroll:
                    form.querySelector('#endless-scroll').checked,
                keyboardShortcuts:
                    form.querySelector('#keyboard-shortcuts').checked,
                transparencyGrid:
                    form.querySelector('#transparency-grid').checked,
            });
        });

        views.listenToMessages(source);
        views.showView(target, source);
    }
}

module.exports = SettingsView;
