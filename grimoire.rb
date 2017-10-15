class Grimoire < Formula
  desc "Sourcery templates package manager."
  homepage "https://github.com/Palleas/Grimoire"
  head "https://github.com/Palleas/Grimoire.git", :branch => "chore/homebrew-formulae"

  depends_on :xcode => ["9.0", :build]

  def install
      system "make", "swiftpm_install", "PREFIX=#{prefix}"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test Grimoire`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
