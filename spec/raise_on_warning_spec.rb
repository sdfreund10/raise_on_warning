RSpec.describe RaiseOnWarning do
  it "has a version number" do
    expect(RaiseOnWarning::VERSION).not_to be nil
  end

  it "raises runtime error when using Warning#warn" do
    msg = "WARNING"
    expect { Warning.warn(msg) }.to raise_error(RuntimeError).with_message(msg)
  end

  it "raises error on warnings triggered by ruby core libraries" do
    ruby_version = RUBY_VERSION[/\d\.\d/]
    if ruby_version == "2.7"
      # this is explicitely testing one of the more consequential ruby deprecations in recent memory
      expect do
        RaiseOnWarning::TestClass.kwarg_method({ arg: 1 })
      end.to raise_error(RuntimeError)
    end

    expect { [1, 2, 3].freeze << 4 }.to raise_error(RuntimeError)
  end
end
