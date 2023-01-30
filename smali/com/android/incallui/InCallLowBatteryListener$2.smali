.class Lcom/android/incallui/InCallLowBatteryListener$2;
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

    .line 501
    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$2;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    iput-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener$2;->val$call:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "displayLowBatteryAlert answer as Voice Call"

    .line 504
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    iget-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$2;->val$call:Lcom/android/incallui/call/DialerCall;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/incallui/call/DialerCall;->answer(I)V

    return-void
.end method
