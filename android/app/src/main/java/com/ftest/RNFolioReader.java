package com.ftest;

import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.ReactPackage;

import com.folioreader.model.HighLight;
import com.folioreader.ui.base.OnSaveHighlight;
import com.folioreader.util.FolioReader;
import com.folioreader.util.OnHighlightListener;

import java.util.Map;
import java.util.ArrayList;
import java.util.List;
import android.app.Activity;
import android.content.Intent;
import android.content.Context;
import android.net.Uri;

public class RNFolioReader extends ReactContextBaseJavaModule {

  ReactContext mContext;
  Activity mActivity = null;
  private FolioReader folioReader;


/*
  public RNFolioReader(Activity activity) {
      mActivity = activity;
  }


    @Override
    protected VrVideoView createViewInstance(ThemedReactContext reactContext) {

        // You can also activity from ThemedReactContext
        Activity mActivity = reactContext.getCurrentActivity();

        VrVideoView vrView = new VrVideoView(mActivity);
        vrView.setEventListener(new ActivityEventListener(vrView));
        vrView.pauseVideo();
        return new VrVideoView(mActivity);
    }
  */
  public RNFolioReader(ReactApplicationContext reactContext) {
    super(reactContext);
    mContext = reactContext;
  //  Intent intent = new Intent();
  //  intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);

    //Activity activity = mContext.getCurrentActivity();

  }


  @Override
  public String getName() {
    return "RNFolioReader";
  }
  @ReactMethod
  public void open(String filePath) {
   //Activity activity = getCurrentActivity();
   //FolioReader folioReader = new FolioReader(mActivity);
   folioReader = new FolioReader(mContext.getCurrentActivity());
   //Uri uri = Uri.parse("file://" + filePath);
   //folioReader.openBook("file:///android_asset/aayesha.epub");
   folioReader.openBook(filePath);
  }
}
