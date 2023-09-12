/*import flixel.system.FlxSound;


//public var listener:FlxSoundListener;


function createVisualizer() {
    // create a new FlxSoundObject wrapper to manage the audio playback
    var sound = FlxG.sound.playMusic(Paths.music('angusPlaceholder'), 0, true);
    
    // create a new FlxSoundListener wrapper to handle the audio updates
    listener = new FlxSoundListener();
    listener.bind(sound);
}

    function updateVisualizer() {
        // update the height of the visualizer based on the current volume
        var volume = sound.volume / sound.maxVolume;
        var height = (FlxG.screenHeight * volume) / 100;
        var plotData = new Array();

        // draw the plot data
        var i = 0;
        for (i in ...10) {
            plotData.push(i);
        }

        // create a new graph object to handle the visualizer
        var graph = new Graph();
        var type = PlotType.RANGE;

        // create a new plot object and add the plot data
        var plot = new Plot(type, 0, FlxG .screenWidth , 5);

        // update the visualizer's data
        plot.data = plotData;
    
        // add the visualizer to the display
        add(graph);
    
        // update the visualizer every frame
        update();
    }
    
        // start the visualizer on a new thread to prevent audio lag
        var thread = new Thread(createVisualizer);
    
function drawVisualizer(graph: Graph) {
    var rangePlot = new Plot(PlotType.RANGE, 0, 0);
    graph.plot = rangePlot;
    for (i in ...rangePlot.yMin) {
        rangePlot.addData(i, i, 0);
    }
}

*/