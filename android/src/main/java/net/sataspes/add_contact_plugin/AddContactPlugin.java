package net.sataspes.add_contact_plugin;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import android.content.Intent;
import android.provider.ContactsContract;
import android.content.Context;
import android.app.Activity;

/** AddContactPlugin */
public class AddContactPlugin implements MethodCallHandler {
  /** Plugin registration. */
  private final Activity activity;
  Intent intent = new Intent(Intent.ACTION_INSERT,ContactsContract.Contacts.CONTENT_URI);

  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "add_contact_plugin");
    channel.setMethodCallHandler(new AddContactPlugin(registrar.activity()));
  }

    private AddContactPlugin(Activity activity) {
        this.activity = activity;
    }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("insertContact")) {
        activity.startActivity(intent);
    } else {
      result.notImplemented();
    }
  }
}
