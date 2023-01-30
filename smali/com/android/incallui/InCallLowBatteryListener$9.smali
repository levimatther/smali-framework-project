.class Lcom/android/incallui/InCallLowBatteryListener$9;
.super Ljava/lang/Object;
.source "InCallLowBatteryListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallLowBatteryListener;->displayLowBatteryAlert(Lcom/android/incallui/call/DialerCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallLowBatteryListener;

.field final synthetic val$call:Lcom/android/incallui/call/DialerCall;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$9;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    iput-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener$9;->val$call:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "displayLowBatteryAlert accept upgrade request as Video Call"

    .line 586
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    iget-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$9;->val$call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech;->acceptVideoRequest()V

    return-void
.end method
