#!/bin/bash

# Colors

bold='\033[1m' # Bold Text

black='\033[30m'
white='\033[37m'
cyan='\033[36m'

red='\033[41m' # HighLight
hcyan='\033[46m' # HighLight

reset='\033[0m' # Reset Colors

## Start Android Debug Bridge

adb start-server



user=$USER # Get User of system


echo -e """$white



	██╗  ██╗██╗   ██╗ ██████╗ ███╗   ██╗██╗   ██╗███████╗     █████╗ ███╗   ██╗██████╗ ██████╗  ██████╗ ██╗██████╗ 
	██║ ██╔╝╚██╗ ██╔╝██╔════╝ ████╗  ██║██║   ██║██╔════╝    ██╔══██╗████╗  ██║██╔══██╗██╔══██╗██╔═══██╗██║██╔══██╗
	█████╔╝  ╚████╔╝ ██║  ███╗██╔██╗ ██║██║   ██║███████╗    ███████║██╔██╗ ██║██║  ██║██████╔╝██║   ██║██║██║  ██║
	██╔═██╗   ╚██╔╝  ██║   ██║██║╚██╗██║██║   ██║╚════██║    ██╔══██║██║╚██╗██║██║  ██║██╔══██╗██║   ██║██║██║  ██║
	██║  ██╗   ██║   ╚██████╔╝██║ ╚████║╚██████╔╝███████║    ██║  ██║██║ ╚████║██████╔╝██║  ██║╚██████╔╝██║██████╔╝
	╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ ╚══════╝    ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝╚═════╝ 
														       
			███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗                                    
			██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗                                   
			███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝                                   
			╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗                                   
			███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║                                   
			╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝                                   
														       


                                                                                                                                                                               

$reset"""



FILE_PATH="/home/$user/L4A"

if [ -d "$FILE_PATH" ];then
	true
else
	mkdir /home/$user/L4A
fi





menu(){


	echo -e "$white$bold 1 > Scan  $reset"
	echo -e "$white$bold 2 > Analyze Meticulously  $reset"
	echo -e "$white$bold 3 > Save Device Info $reset "
	echo -e "$white$bold 4 > Exit  $reset"

	read response

	if [ "$response" == 1 ];then
		scan
	elif [ "$response" == 2 ];then
		am
	elif [ "$response" == 3 ];then
		info
	elif [ "$response" == 4 ];then
		echo -e "$red$white$bold EXIT "
		exit
	else
		echo -e "$red$white$bold !!! Please Enter Valid Number $reset"
		menu
	fi



}


devices=` adb devices  | grep -w device`
if [ "$devices" ];then
	serial=`adb get-serialno`
	state=`adb get-state`
	dev_path=`adb get-devpath`
	
	echo -e "$cyan ======= Device Information ======="
	echo -e "$cyan Serial : $serial"
	echo -e "$cyan State :  $state"
	echo -e "$cyan Device Path : $dev_path $reset"
	echo -e "$cyan ================================== $reset"

else
	echo -e "$red$white No Device Detected [ ERROR ] "
	exit 0
fi





scan(){



## Basic Database of app:
## https://www.forbes.com/sites/zakdoffman/2019/12/19/avoid-these-100-android-apps-hiding-malicious-malware-new-fraud-arms-race-underway/?sh=372645f539e8

	ports=`adb shell netstat -na | grep -w LISTEN | cut -d":" -f2 | cut -d " " -f1  | grep -o "[0-9]*"`


	echo -e "$red$white OpenPorts : $ports $reset"


	files=`adb shell pm list packages | cut -d ":" -f2`
	for file in $files;do
		if [ "$file" == "com.false.call.trick" ] || \
			[ "$file" == "yourdestinypredict.yourlifetest.amazingma gic" ] || \
			[ "$file" == "magicball.funnyapp.useful.crystal" ] || \
			[ "$file" == "com.false.call.trick" ] || \
			[ "$file" == "com.daily.best.suit.you" ] || \
			[ "$file" == "com.personal.fortune.text" ] || \
			[ "$file" == "com.frank.video.call.lite.pro.prank" ] || \
			[ "$file" == "bedtime.reminder.lite.sleep" ] || \
			[ "$file" == "com.ssdk.test" ] || \
			[ "$file" == "your.best.lucky.master.test.new" ] || \
			[ "$file" == "well.sleep.guard.relax" ] || \
			[ "$file" == "test.you.romantic.quize" ] || \
			[ "$file" == "super.lucky.magican.newest" ] || \
			[ "$file" == "relax.ezzz.sleep.cradle" ] || \
			[ "$file" == "pic.art.photo.studio.picture" ] || \
			[ "$file" == "photo.editor.pro.magic" ] || \
			[ "$file" == "nmd.android.test.what.suitable" ] || \
			[ "$file" == "nmd.android.scanner.master.plus" ] || \
			[ "$file" == "nmd.android.multiple.fortune.test" ] || \
			[ "$file" == "nmd.android.location.faker.master" ] || \
			[ "$file" == "nmd.android.good.luck.everyday" ] || \
			[ "$file" == "nmd.android.fake.incoming.call" ] || \
			[ "$file" == "nmd.android.clam.white.noise" ] || \
			[ "$file" == "nmd.android.better.fortune.signs" ] || \
			[ "$file" == "nmd.android.best.fortune.explorer" ] || \
			[ "$file" == "nmd.andriod.mobile.calculator.master" ] || \
			[ "$file" == "nmd.andriod.better.calculator.plus" ] || \
			[ "$file" == "newest.android.fake.location.changer" ] || \
			[ "$file" == "my.lucky.goddness.today.test" ] || \
			[ "$file" == "mobi.clock.android" ] || \
			[ "$file" == "good.lucky.is.coming.hh" ] || \
			[ "$file" == "com.word.fun.level.english" ] || \
			[ "$file" == "com.wmmaster.android" ] || \
			[ "$file" == "com.tiny.scanner.tool.nmd" ] || \
			[ "$file" == "com.test.lover.match" ] || \
			[ "$file" == "com.test.fortune.tester" ] || \
			[ "$file" == "com.test.find.your.love" ] || \
			[ "$file" == "com.smart.scanner.master.nmd" ] || \
			[ "$file" == "com.sleeptimer.android" ] || \
			[ "$file" == "com.sleepassistantool.android" ] || \
			[ "$file" == "com.sleep.in.rain" ] || \
			[ "$file" == "com.sleep.comfortable.sounds" ] || \
			[ "$file" == "com.simple.days.counter" ] || \
			[ "$file" == "com.scan.code.tool" ] || \
			[ "$file" == "com.puzzle.cute.dog.android" ] || \
			[ "$file" == "com.pro.test.noise" ] || \
			[ "$file" == "com.phonecallmaker.android" ] || \
			[ "$file" == "com.prank.call.fake.ring" ] || \
			[ "$file" == "com.pocker.pro.mobile.mirror" ] || \
			[ "$file" == "com.phone.mirror.pro" ] || \
			[ "$file" == "com.phone.lite.frame" ] || \
			[ "$file" == "com.non.stop.writing" ] || \
			[ "$file" == "com.nomophotoeditor.android" ] || \
			[ "$file" == "com.nice.mobile.mirror.hd" ] || \
			[ "$file" == "com.nanny.tool.data" ] || \
			[ "$file" == "com.my.pocker.mobile.mirror" ] || \
			[ "$file" == "com.my.constellation.love.work" ] || \
			[ "$file" == "com.my.big.days.counter" ] || \
			[ "$file" == "com.multiple.scanner.plus.nmd" ] || \
			[ "$file" == "com.math.puzzles.riddle.braingame" ] || \
			[ "$file" == "com.math.iq.puzzle.riddle.braingame" ] || \
			[ "$file" == "com.math.braingame.puzzle.riddle" ] || \
			[ "$file" == "com.magnifying.glass.tool" ] || \
			[ "$file" == "com.lucky.destiny.teller" ] || \
			[ "$file" == "com.lucky.charm.text" ] || \
			[ "$file" == "com.love.yourself.women" ] || \
			[ "$file" == "com.lovetest.plus.android" ] || \
			[ "$file" == "com.lite.fake.gps.location" ] || \
			[ "$file" == "com.led.color.light.rolling" ] || \
			[ "$file" == "com.isleep.cycleclock.android" ] || \
			[ "$file" == "com.instanomo.android" ] || \
			[ "$file" == "com.important.days.matter" ] || \
			[ "$file" == "com.idays.dayscounter.android" ] || \
			[ "$file" == "com.ice.survival.berg" ] || \
			[ "$file" == "com.game.color.hunter" ] || \
			[ "$file" == "com.funny.word.game.english" ] || \
			[ "$file" == "com.funny.lie.truth.detector" ] || \
			[ "$file" == "com.free.lucky.prediction.test" ] || \
			[ "$file" == "com.free.code.scanner.nmd" ] || \
			[ "$file" == "com.frank.video.call.lite" ] || \
			[ "$file" == "com.frame.easy.phone" ] || \
			[ "$file" == "com.find.you.lover.test" ] || \
			[ "$file" == "com.find.difference.detective.little" ] || \
			[ "$file" == "com.filemanagerzeropro.android" ] || \
			[ "$file" == "com.filemanageryo.android" ] || \
			[ "$file" == "com.filemanagerupro.android" ] || \
			[ "$file" == "com.filemanagerkilopro.android" ] || \
			[ "$file" == "com.fast.code.scanner.nmd" ] || \
			[ "$file" == "com.fancy.lovetest.android" ] || \
			[ "$file" == "com.false.location" ] || \
			[ "$file" == "com.fake.caller.plus" ] || \
			[ "$file" == "com.fakecaller.android" ] || \
			[ "$file" == "com.fake.call.girlfriend.prank2019" ] || \
			[ "$file" == "com.ezzz.fan.sleep.noise" ] || \
			[ "$file" == "com.drink.water.remind.you" ] || \
			[ "$file" == "com.dog.bark.picture.puzzle" ] || \
			[ "$file" == "com.dodge.emoji.game" ] || \
			[ "$file" == "com.detector.noise.tool" ] || \
			[ "$file" == "com.days.remind.calendar" ] || \
			[ "$file" == "com.days.daysmatter365.android" ] || \
			[ "$file" == "com.data.securite.data" ] || \
			[ "$file" == "com.dangerous.writing.note" ] || \
			[ "$file" == "com.dailycostmaster.android" ] || \
			[ "$file" == "com.daily.wonderfull.moment" ] || \
			[ "$file" == "com.cute.love.test.android" ];then
				echo -e "$red $file Find Malware $reset"
		else
				echo -e "File: \t$file" "$cyan[ OK ]" "$reset"
				sleep 0.2
		fi
	done

}




info(){

	info_time=`date "+%Y/%m/%d-%H:%M"`

	info_path="/home/$user/L4A/Documents/$info_time"
	if [ -d "$info_path" ];then
		true
	else
		mkdir /home/$user/L4A/Documents/$info_time
	fi

	activity=`adb shell dumpsys activity`
	backup=`adb shell dumpsys audio`
	content=`adb shell dumpsys content`
	connectivity=`adb shell dumpsys connectivity`
	backup=`adb shell dumpsys backup`
	battery=`adb shell dumpsys battery`
	display=`adb shell dumpsys display`
	

	serial=`adb get-serialno`
	echo $activity > $info_path/$serial-Activity.txt
	echo $backup > $info_path/$serial-Backup.txt
	echo $content > $info_path/$serial-Content.txt
	echo $connectivity > $info_path/$serial-Connectivity.txt
	echo $backup > $info_path/$serial-Backup.txt
	echo $battery > $info_path/$serial-Battery.txt
	echo $display > $info_path/$serial-Display.txt
	
	
	echo -e "$white$bold All Data Saved in /home/$user/L4A/Documents"
	echo -e "$white$bold Number of Files Saved in /home/$user/L4A/Documents : 7 "
}




am(){
	echo -e "$white$bold ==================== Meticulously Analyze ==================== \n"
	echo -e "$white$bold In this section, you can view the logs instantly"
	sleep 3
	adb logcat
}



menu
