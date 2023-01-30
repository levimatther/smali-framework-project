.class Lcom/android/incallui/InCallLowBatteryListener$5;
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


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallLowBatteryListener;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener$5;->this$0:Lcom/android/incallui/InCallLowBatteryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "displayLowBatteryAlert place Video Call"

    .line 537
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
