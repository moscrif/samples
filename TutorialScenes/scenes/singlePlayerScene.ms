include "lib://game2d/textButton.ms"
include "lib://game2d/label.ms"

class SinglePlayerScene : Scene
{
    function init()
    {
        super.init();

        this.add(new Label({text:"Single Player", y:200, x:System.width/2}));
        this.add(new SampleLayer());

        this._back = new TextButton({text:"Back", x:System.width/2, y:System.height/10*9});
        this._back.onClick = function() {
            SFX.playClick();
            this super._goBack();
        }
        this.add(this._back);
    }

    function _goBack()
    {
        Game.instance.pop(new SlideToBottom());
    }
}