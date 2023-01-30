.class public Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProximityDisplayListener"
.end annotation


# instance fields
.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIsDisplayOn:Z

.field final synthetic this$0:Lcom/android/incallui/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/android/incallui/ProximitySensor;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mIsDisplayOn:Z

    .line 262
    iput-object p2, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    if-nez p1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 284
    :goto_0
    iget-boolean p1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mIsDisplayOn:Z

    if-eq v0, p1, :cond_1

    .line 285
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mIsDisplayOn:Z

    .line 286
    iget-object p1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p1, v0}, Lcom/android/incallui/ProximitySensor;->onDisplayStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method register()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method unregister()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method
