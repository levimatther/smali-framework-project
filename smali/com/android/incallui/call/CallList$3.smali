.class Lcom/android/incallui/call/CallList$3;
.super Ljava/lang/Object;
.source "CallList.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/call/CallList;->onCallAdded(Landroid/content/Context;Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/call/CallList;

.field final synthetic val$call:Lcom/android/incallui/call/DialerCall;

.field final synthetic val$dialerCallListener:Lcom/android/incallui/call/CallList$DialerCallListenerImpl;


# direct methods
.method constructor <init>(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/call/CallList$DialerCallListenerImpl;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/incallui/call/CallList$3;->this$0:Lcom/android/incallui/call/CallList;

    iput-object p2, p0, Lcom/android/incallui/call/CallList$3;->val$call:Lcom/android/incallui/call/DialerCall;

    iput-object p3, p0, Lcom/android/incallui/call/CallList$3;->val$dialerCallListener:Lcom/android/incallui/call/CallList$DialerCallListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 186
    iget-object p1, p0, Lcom/android/incallui/call/CallList$3;->val$call:Lcom/android/incallui/call/DialerCall;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/incallui/call/DialerCall;->setBlockedStatus(Z)V

    .line 187
    iget-object p1, p0, Lcom/android/incallui/call/CallList$3;->val$dialerCallListener:Lcom/android/incallui/call/CallList$DialerCallListenerImpl;

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->onDialerCallUpdate()V

    :cond_0
    return-void
.end method
