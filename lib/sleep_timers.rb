$x_short1 = rand(0.1..0.5)
$x_short2 = rand(0.1..0.5)
$x_short3 = rand(0.1..0.5)
$x_short4 = rand(0.1..0.5)
$x_short5 = rand(0.1..0.5)

$v_short1 = rand(0.1..1)
$v_short2 = rand(0.1..1)
$v_short3 = rand(0.1..1)
$v_short4 = rand(0.1..1)
$v_short5 = rand(0.1..1)

$short1 = rand(1..2)
$short2 = rand(1..2)
$short3 = rand(1..2)
$short4 = rand(1..2)
$short5 = rand(1..2)

$med1 = rand(2..3)
$med2 = rand(2..3)
$med3 = rand(2..3)
$med4 = rand(2..3)
$med5 = rand(2..3)

$long1 = rand(3..4)
$long2 = rand(3..4)
$long3 = rand(3..4)
$long4 = rand(3..4)
$long5 = rand(3..4)

$v_long1 = rand(4..5)
$v_long2 = rand(4..5)
$v_long3 = rand(4..5)
$v_long4 = rand(4..5)
$v_long5 = rand(4..5)

$x_long1 = rand(5..10)
$x_long2 = rand(5..10)
$x_long3 = rand(5..10)
$x_long4 = rand(5..10)
$x_long5 = rand(5..10)

# def spinner

# 	200.times do
# 		print "|"
# 		system "sleep 0.1"
# 		print "\r" + ("\e[A\e[K"*1)
# 		print "/"
# 		system "sleep 0.1"
# 		print "\r" + ("\e[A\e[K"*1)
# 		print "-"
# 		system "sleep 0.1"
# 		print "\r" + ("\e[A\e[K"*1)
# 		print "\\"
# 		system "sleep 0.1"
# 		print "\r" + ("\e[A\e[K"*1)
# 	end

# end

def loading_title_screen

	system 'clear'

	puts
	system "sleep 0.25"
	puts "Now Loading Proman X9"
	puts
	system "sleep #{$v_short2}"
	puts "25%"
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "50%"
	system "sleep #{$short2}"
	print "\r" + ("\e[A\e[K"*1)
	puts "75%"
	system "sleep #{$v_short1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "98%"
	system "sleep #{$long1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "99%"
	system "sleep #{$v_long1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "100%"
	system "sleep #{$v_long2}"
	puts
	puts "Loading Complete"
	system "sleep #{$med}"
	puts
end

def loading_x_short

	puts
	system "sleep 0.5"
	puts "Now Loading:"
	puts
	system "sleep #{$x_short1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "25%"
	system "sleep #{$x_short2}"
	print "\r" + ("\e[A\e[K"*1)
	puts "50%"
	system "sleep #{$x_short3}"
	print "\r" + ("\e[A\e[K"*1)
	puts "75%"
	system "sleep #{$x_short4}"
	print "\r" + ("\e[A\e[K"*1)
	puts "98%"
	system "sleep #{$x_short5}"
	print "\r" + ("\e[A\e[K"*1)
	puts "99%"
	system "sleep #{$v_short1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "100%"
	system "sleep #{$v_short2}"
	puts
	puts "Loading Complete"
	system "sleep 2"
	puts

end

def loading_v_short

	puts
	system "sleep 0.5"
	puts "Now Loading:"
	puts
	system "sleep #{$v_short1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "25%"
	system "sleep #{$v_short2}"
	print "\r" + ("\e[A\e[K"*1)
	puts "50%"
	system "sleep #{$v_short3}"
	print "\r" + ("\e[A\e[K"*1)
	puts "75%"
	system "sleep #{$v_short4}"
	print "\r" + ("\e[A\e[K"*1)
	puts "98%"
	system "sleep #{$v_short5}"
	print "\r" + ("\e[A\e[K"*1)
	puts "99%"
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "100%"
	system "sleep #{$short2}"
	puts
	puts "Loading Complete"
	system "sleep 2"
	puts

end

def loading_short

	puts
	system "sleep 0.5"
	puts "Now Loading:"
	puts
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "25%"
	system "sleep #{$short2}"
	print "\r" + ("\e[A\e[K"*1)
	puts "50%"
	system "sleep #{$short3}"
	print "\r" + ("\e[A\e[K"*1)
	puts "75%"
	system "sleep #{$short4}"
	print "\r" + ("\e[A\e[K"*1)
	puts "98%"
	system "sleep #{$short5}"
	print "\r" + ("\e[A\e[K"*1)
	puts "99%"
	system "sleep #{$med1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "100%"
	system "sleep #{$med2}"
	puts
	puts "Loading Complete"
	system "sleep 2"
	puts

end

def loading_med

	puts
	system "sleep 0.5"
	puts "Now Loading:"
	puts
	system "sleep #{$med1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "25%"
	system "sleep #{$med2}"
	print "\r" + ("\e[A\e[K"*1)
	puts "50%"
	system "sleep #{$med3}"
	print "\r" + ("\e[A\e[K"*1)
	puts "75%"
	system "sleep #{$med4}"
	print "\r" + ("\e[A\e[K"*1)
	puts "98%"
	system "sleep #{$med5}"
	print "\r" + ("\e[A\e[K"*1)
	puts "99%"
	system "sleep #{$long1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "100%"
	system "sleep #{$long2}"
	puts
	puts "Loading Complete"
	system "sleep 2"
	puts

end

def loading_long

	puts
	system "sleep 0.5"
	puts "Now Loading:"
	puts
	system "sleep #{$long1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "25%"
	system "sleep #{$long2}"
	print "\r" + ("\e[A\e[K"*1)
	puts "50%"
	system "sleep #{$long3}"
	print "\r" + ("\e[A\e[K"*1)
	puts "75%"
	system "sleep #{$long4}"
	print "\r" + ("\e[A\e[K"*1)
	puts "98%"
	system "sleep #{$long5}"
	print "\r" + ("\e[A\e[K"*1)
	puts "99%"
	system "sleep #{$v_long1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "100%"
	system "sleep #{$v_long2}"
	puts
	puts "Loading Complete"
	system "sleep 2"
	puts

end

def loading_v_long

	puts
	system "sleep 0.5"
	puts "Now Loading:"
	puts
	system "sleep #{$v_long1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "25%"
	system "sleep #{$v_long2}"
	print "\r" + ("\e[A\e[K"*1)
	puts "50%"
	system "sleep #{$v_long3}"
	print "\r" + ("\e[A\e[K"*1)
	puts "75%"
	system "sleep #{$v_long4}"
	print "\r" + ("\e[A\e[K"*1)
	puts "98%"
	system "sleep #{$v_long5}"
	print "\r" + ("\e[A\e[K"*1)
	puts "99%"
	system "sleep #{$x_long1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "100%"
	system "sleep #{$x_long2}"
	puts
	puts "Loading Complete"
	system "sleep 2"
	puts

end

def loading_x_long

	puts
	system "sleep 0.5"
	puts "Now Loading:"
	puts
	system "sleep #{$x_long1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "25%"
	system "sleep #{$x_long2}"
	print "\r" + ("\e[A\e[K"*1)
	puts "50%"
	system "sleep #{$x_long3}"
	print "\r" + ("\e[A\e[K"*1)
	puts "75%"
	system "sleep #{$x_long4}"
	print "\r" + ("\e[A\e[K"*1)
	puts "98%"
	system "sleep #{$x_long5}"
	print "\r" + ("\e[A\e[K"*1)
	puts "99%"
	system "sleep #{$x_long1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "100%"
	system "sleep #{$x_long2}"
	puts
	puts "Loading Complete"
	system "sleep 2"
	puts

end