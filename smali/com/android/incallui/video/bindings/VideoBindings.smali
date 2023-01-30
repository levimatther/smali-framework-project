.class public Lcom/android/incallui/video/bindings/VideoBindings;
.super Ljava/lang/Object;
.source "VideoBindings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVideoCallScreen(Ljava/lang/String;Z)Lcom/android/incallui/video/protocol/VideoCallScreen;
    .locals 0

    if-eqz p1, :cond_0

    .line 28
    invoke-static {p0}, Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;->newInstance(Ljava/lang/String;)Lcom/android/incallui/video/impl/SurfaceViewVideoCallFragment;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/video/impl/VideoCallFragment;->newInstance(Ljava/lang/String;)Lcom/android/incallui/video/impl/VideoCallFragment;

    move-result-object p0

    return-object p0
.end method
