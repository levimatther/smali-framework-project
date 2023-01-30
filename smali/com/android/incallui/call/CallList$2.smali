.class Lcom/android/incallui/call/CallList$2;
.super Ljava/lang/Object;
.source "CallList.java"

# interfaces
.implements Lcom/android/dialer/spam/SpamBindings$Listener;


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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialerCallListener:Lcom/android/incallui/call/CallList$DialerCallListenerImpl;


# direct methods
.method constructor <init>(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Landroid/content/Context;Lcom/android/incallui/call/CallList$DialerCallListenerImpl;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/incallui/call/CallList$2;->this$0:Lcom/android/incallui/call/CallList;

    iput-object p2, p0, Lcom/android/incallui/call/CallList$2;->val$call:Lcom/android/incallui/call/DialerCall;

    iput-object p3, p0, Lcom/android/incallui/call/CallList$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/incallui/call/CallList$2;->val$dialerCallListener:Lcom/android/incallui/call/CallList$DialerCallListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/android/incallui/call/CallList$2;->val$call:Lcom/android/incallui/call/DialerCall;

    .line 144
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/call/CallList$2;->val$call:Lcom/android/incallui/call/DialerCall;

    .line 145
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_3

    const-string v2, "CallList.onCallAdded"

    if-nez v0, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v3, "marking spam call as not spam because it\'s not an incoming call"

    .line 148
    invoke-static {v2, v3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move p1, v1

    goto :goto_3

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/call/CallList$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/call/CallList$2;->val$call:Lcom/android/incallui/call/DialerCall;

    invoke-static {v3, v4}, Lcom/android/incallui/call/CallList;->access$100(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v3, "marking spam call as not spam because an emergency call was made on this device recently"

    .line 153
    invoke-static {v2, v3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/android/incallui/call/CallList$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    if-eqz p1, :cond_4

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_SPAM_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_NON_SPAM_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    :goto_4
    iget-object v2, p0, Lcom/android/incallui/call/CallList$2;->val$call:Lcom/android/incallui/call/DialerCall;

    .line 167
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/call/CallList$2;->val$call:Lcom/android/incallui/call/DialerCall;

    .line 168
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v3

    .line 163
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/call/CallList$2;->val$call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/DialerCall;->setSpam(Z)V

    .line 171
    iget-object p1, p0, Lcom/android/incallui/call/CallList$2;->val$dialerCallListener:Lcom/android/incallui/call/CallList$DialerCallListenerImpl;

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList$DialerCallListenerImpl;->onDialerCallUpdate()V

    return-void
.end method
