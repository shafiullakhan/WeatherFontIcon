**WeatherFontIcon**
===============

Using Font Icon Set within Label to display weather icon 
 [Weather 7 Icon Font Set]

![enter image description here](https://cloud.githubusercontent.com/assets/5112118/4805910/0287eb22-5e83-11e4-991b-efb3f930023c.png)

**Usage**
----

To use WeatherFontIcon, download [WeatherFont] inlcude FontHeader.h and Pe-icon-7-weather.ttf inside your project and follow the below steps:

1. Open Info.plist file add row and set key value as "Fonts provided by application", by default array object is created
2. Set Value for Item 0 as "Pe-icon-7-weather.ttf"
3. Use can you font icon as normal UILabel 

An example of making a label with weather font:

    UILabel *fontLabel = [[UILabel alloc] initWithFrame:self.view.bounds];
    [fontLabel setFont:[UIFont fontWithName:@"Pe-icon-7-weather.ttf" size:90]];
    [fontLabel setText:[NSString stringWithFormat:@"%@ Weather Icon Random text",kWind]];
    [fontLabel setTextColor:[UIColor whiteColor]];
    [self.view addSubview:fontLabel];
    
Where "kWind" you can find inside FontHeader.h file all available weather icon which you can used to set the UILabel text value.

There's also an example project. 


**License**
----

MIT

[Weather 7 Icon Font Set]:http://www.pixeden.com/icon-fonts/weather-7-icon-font-set
[WeatherFont]:https://github.com/shafiullakhan/WeatherFontIcon/tree/master/WeatherFont
