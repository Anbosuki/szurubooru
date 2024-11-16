<div id='post-upload'>
    <form>
        <div class='dropper-container'></div>

        <div class='control-strip'>
            <input type='submit' value='Upload all' class='submit'/>

            <span class='skip-duplicates'>
                <%= ctx.makeCheckbox({
                    text: 'Skip duplicate',
                    name: 'skip-duplicates',
                    checked: false,
                }) %>
            </span>

            <span class='always-upload-similar'>
                <%= ctx.makeCheckbox({
                    text: 'Force upload similar',
                    name: 'always-upload-similar',
                    checked: false,
                }) %>
            </span>

            <span class='pause-remain-on-error'>
                <%= ctx.makeCheckbox({
                    text: 'Pause on error',
                    name: 'pause-remain-on-error',
                    checked: true,
                }) %>
            </span>

            <input type='button' value='Cancel' class='cancel'/>
        </div>

        <% if (ctx.enableSafety) { %>
            <div class="control-strip" style="margin-top: 1rem;">
                <input id="bulk-mark-safe" data type="button" value="Mark all Safe">
                <input id="bulk-mark-sketchy" type="button" value="Mark all Sketchy" style="margin-left: 1rem;">
                <input id="bulk-mark-unsafe" type="button" value="Mark all Unsafe" style="margin-left: 1rem;">
            </div>
        <% } %>

        <div class='messages'></div>

        <ul class='uploadables-container'></ul>
    </form>
</div>
