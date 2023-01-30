.class Lcom/android/incallui/call/DialerCall$1;
.super Landroid/telecom/Call$Callback;
.source "DialerCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/call/DialerCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/call/DialerCall;


# direct methods
.method constructor <init>(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDestroyed(Landroid/telecom/Call;)V
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TelecomCallCallback.onCallDestroyed"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->unregisterCallback()V

    return-void
.end method

.method public onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannedTextResponses="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "TelecomCallCallback.onCannedTextResponsesLoaded"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$900(Lcom/android/incallui/call/DialerCall;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/call/DialerCall$CannedTextResponsesLoadedListener;

    .line 317
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-interface {p2, v0}, Lcom/android/incallui/call/DialerCall$CannedTextResponsesLoadedListener;->onCannedTextResponsesLoaded(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .line 283
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 349
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "DialerCall.onConferenceableCallsChanged"

    const-string p2, "call %s, conferenceable calls: %d"

    .line 345
    invoke-static {p1, p2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DialerCall.onConnectionEvent"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "org.codeaurora.event.PHONE_ACCOUNT_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "android.telephony.event.EVENT_HANDOVER_TO_WIFI_FAILED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "android.telecom.event.CALL_REMOTELY_HELD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "android.telecom.event.CALL_MERGE_FAILED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string v0, "android.telephony.event.EVENT_NOTIFY_INTERNATIONAL_CALL_ON_WFC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "android.telecom.event.MERGE_COMPLETE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "android.telecom.event.CALL_REMOTELY_UNHELD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "mediatek.telecom.event.RTT_SUPPORT_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v0, "android.telecom.event.MERGE_START"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 440
    :pswitch_0
    invoke-static {}, Lcom/android/dialer/util/DialerUtils;->isMediaTekPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    const-string v4, "mediatek.telecom.extra.RTT_SUPPORT_REMOTE"

    invoke-virtual {p3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/incallui/call/DialerCall;->access$1402(Lcom/android/incallui/call/DialerCall;Z)Z

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRttSupportRemote is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v2}, Lcom/android/incallui/call/DialerCall;->access$1400(Lcom/android/incallui/call/DialerCall;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "merge complete"

    .line 435
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0, v1}, Lcom/android/incallui/call/DialerCall;->access$1302(Lcom/android/incallui/call/DialerCall;Z)Z

    goto :goto_2

    :pswitch_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "merge start"

    .line 431
    invoke-static {v3, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0, v2}, Lcom/android/incallui/call/DialerCall;->access$1302(Lcom/android/incallui/call/DialerCall;Z)Z

    goto :goto_2

    .line 428
    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->notifyInternationalCallOnWifi()V

    goto :goto_2

    .line 424
    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0, v1}, Lcom/android/incallui/call/DialerCall;->access$1202(Lcom/android/incallui/call/DialerCall;Z)Z

    .line 425
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_2

    .line 420
    :pswitch_5
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0, v2}, Lcom/android/incallui/call/DialerCall;->access$1202(Lcom/android/incallui/call/DialerCall;Z)Z

    .line 421
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_2

    .line 417
    :pswitch_6
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->notifyHandoverToWifiFailed()V

    goto :goto_2

    .line 414
    :pswitch_7
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->notifyWiFiToLteHandover()V

    goto :goto_2

    .line 411
    :pswitch_8
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    goto :goto_2

    .line 408
    :pswitch_9
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    .line 450
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v1}, Lcom/android/incallui/call/DialerCall;->access$1000(Lcom/android/incallui/call/DialerCall;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/tct/common/RttManager;->makeTextForConnectionEvent(Landroid/content/Context;Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f16eb4f -> :sswitch_9
        -0x3e1e0b0c -> :sswitch_8
        -0x2b9613bd -> :sswitch_7
        -0xe57b196 -> :sswitch_6
        0x2d30539c -> :sswitch_5
        0x4535215b -> :sswitch_4
        0x4e840f6a -> :sswitch_3
        0x63bebfb1 -> :sswitch_2
        0x78ab1380 -> :sswitch_1
        0x78cf8886 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 3

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " details="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "TelecomCallCallback.onDetailsChanged"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$200(Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall;->access$300(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->isPhoneAccountRttCapable()Z

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x1

    .line 293
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isPhoneAccountRttCapable()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/incallui/call/DialerCall;->access$302(Lcom/android/incallui/call/DialerCall;Z)Z

    new-array v0, p2, [Ljava/lang/Object;

    const-string v2, "RTT capable is changed force update."

    .line 294
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall;->access$400(Lcom/android/incallui/call/DialerCall;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    if-nez p1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    .line 298
    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$500(Lcom/android/incallui/call/DialerCall;)Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/android/incallui/call/DialerCall;->access$600(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;Landroid/telecom/Call$Details;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "Skip details change."

    .line 299
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$400(Lcom/android/incallui/call/DialerCall;)Landroid/telecom/Call;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result p1

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$700(I)I

    move-result p1

    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "Ignore disconnecting."

    .line 303
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 306
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    .line 307
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1, v0}, Lcom/android/incallui/call/DialerCall;->access$800(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)V

    return-void
.end method

.method public onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " newParent="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "TelecomCallCallback.onParentChanged"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " remainingPostDialSequence="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "TelecomCallCallback.onPostDialWait"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onRttInitiationFailure(Landroid/telecom/Call;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 370
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TelecomCallCallback.onRttInitiationFailure"

    const-string v2, "reason=%d"

    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v1}, Lcom/android/incallui/call/DialerCall;->access$1000(Lcom/android/incallui/call/DialerCall;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tct/common/RttManager;->onRttInitiationFailure(Landroid/content/Context;Landroid/telecom/Call;I)V

    .line 375
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onRttModeChanged(Landroid/telecom/Call;I)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 354
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "TelecomCallCallback.onRttModeChanged"

    const-string v0, "mode=%d"

    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRttRequest(Landroid/telecom/Call;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 359
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TelecomCallCallback.onRttRequest"

    const-string v2, "id=%d"

    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {v1}, Lcom/android/incallui/call/DialerCall;->access$1000(Lcom/android/incallui/call/DialerCall;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tct/common/RttManager;->onRttRequest(Landroid/telecom/Call;ILandroid/content/Context;)V

    return-void
.end method

.method public onRttStatusChanged(Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V
    .locals 4

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    .line 381
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TelecomCallCallback.onRttStatusChanged"

    const-string v3, "enabled=%b"

    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 383
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$1000(Lcom/android/incallui/call/DialerCall;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_ENABLED:Lcom/android/dialer/logging/DialerImpression$Type;

    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    .line 386
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getUniqueCallId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    .line 387
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getTimeAddedMs()J

    move-result-wide v1

    .line 384
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/android/dialer/logging/LoggingBindings;->logCallImpression(Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;J)V

    .line 388
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1, p3}, Lcom/android/incallui/call/DialerCall;->access$1102(Lcom/android/incallui/call/DialerCall;Z)Z

    goto :goto_0

    .line 390
    :cond_0
    iget-object p2, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p2, v2}, Lcom/android/incallui/call/DialerCall;->access$1102(Lcom/android/incallui/call/DialerCall;Z)Z

    .line 391
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p3}, Lcom/android/incallui/call/DialerCall;->access$1000(Lcom/android/incallui/call/DialerCall;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/android/tct/common/RttManager;->onRttStop(Landroid/content/Context;Landroid/telecom/Call;)V

    .line 394
    :goto_0
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " newState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "TelecomCallCallback.onStateChanged"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$000(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " videoCall="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "TelecomCallCallback.onVideoCallChanged"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$400(Lcom/android/incallui/call/DialerCall;)Landroid/telecom/Call;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/incallui/call/DialerCall;->access$502(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)Landroid/telecom/Call$Details;

    .line 334
    iget-object p1, p0, Lcom/android/incallui/call/DialerCall$1;->this$0:Lcom/android/incallui/call/DialerCall;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$100(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method
