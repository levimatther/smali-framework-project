.class public interface abstract Lcom/android/dialer/binary/aosp/AospDialerRootComponent;
.super Ljava/lang/Object;
.source "AospDialerRootComponent.java"

# interfaces
.implements Lcom/android/dialer/binary/basecomponent/BaseDialerRootComponent;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/android/dialer/calllog/CallLogModule;,
        Lcom/android/dialer/inject/ContextModule;,
        Lcom/android/dialer/common/concurrent/DialerExecutorModule;,
        Lcom/android/dialer/configprovider/SharedPrefConfigProviderModule;,
        Lcom/android/dialer/simulator/impl/SimulatorModule;,
        Lcom/android/incallui/calllocation/stub/StubCallLocationModule;,
        Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule;,
        Lcom/android/incallui/maps/stub/StubMapsModule;,
        Lcom/android/voicemail/impl/VoicemailModule;,
        Lcom/android/dialer/lightbringer/stub/StubLightbringerModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation
