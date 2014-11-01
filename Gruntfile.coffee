module.exports = (grunt) ->
	grunt.initConfig
		pkg: grunt.file.readJSON 'package.json'
		coffee:
			compile:
				files:
					'assets/js/app.js': ['assets/coffee/*.coffee']
			compileTest:
				files: [
					{
						expand: true
						cwd: './specs'
						src: ['*.coffee']
						dest: './specs'
						ext: '.js'
					}
				]
		karma:
			unit:
				configFile: 'karma.conf.js'

	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-karma'

	grunt.registerTask 'unit', ['coffee:compileTest', 'coffee:compile', 'karma:unit']
