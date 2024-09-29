local config = {
  cmd = {'/usr/bin/jdtls'},
  root_dir = vim.fs.root(0, {".git", "mvnw", "gradlew"}),
	init_options = {
		bundles = {
			vim.fn.glob("/home/ukasl/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar", 1)
		},
	}
}

require('jdtls').start_or_attach(config)
