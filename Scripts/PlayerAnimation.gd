extends AnimatedSprite

func updater(motion):
	if motion.x < 0:
		self.flip_h = true
		self.play("Run")
	elif motion.x > 0:
		self.flip_h = false
		self.play("Run")
	elif motion.x == 0:
		self.flip_h = false
		self.play("Idle")

	if motion.y < 0:
		self.play("Jump")