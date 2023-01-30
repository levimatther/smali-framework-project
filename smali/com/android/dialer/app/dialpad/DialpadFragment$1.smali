.class Lcom/android/dialer/app/dialpad/DialpadFragment$1;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 p1, 0x0

    const/16 v0, 0x18

    if-eq p2, v0, :cond_15

    const/16 v0, 0x19

    if-ne p2, v0, :cond_0

    goto/16 :goto_5

    .line 560
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 562
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 563
    invoke-static {}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$200()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$102(J)J

    .line 564
    invoke-static {v2, v3}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$202(J)J

    .line 565
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$302(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)Z

    .line 568
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$402(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)Z

    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0, p2, p3}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$500(Lcom/android/dialer/app/dialpad/DialpadFragment;ILandroid/view/KeyEvent;)V

    .line 571
    invoke-static {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$602(Z)Z

    .line 572
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$702(Z)Z

    return v1

    :cond_1
    const-wide/16 v2, 0x0

    .line 576
    invoke-static {v2, v3}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$802(J)J

    .line 579
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0, p2, p3}, Lcom/android/dialer/app/dialpad/DialpadFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 580
    invoke-static {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$602(Z)Z

    .line 581
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$702(Z)Z

    return v1

    .line 583
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p3

    if-lez p3, :cond_12

    .line 585
    iget-object p3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p3}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$900(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z

    move-result p3

    if-eqz p3, :cond_3

    return v1

    .line 590
    :cond_3
    iget-object p3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {p3, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->changeEditTextLine(I)V

    const/4 p3, 0x4

    if-eq p2, p3, :cond_10

    const-string p3, "airplane_mode_on"

    packed-switch p2, :pswitch_data_0

    .line 699
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$602(Z)Z

    return v1

    .line 594
    :pswitch_0
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$400(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 595
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "+"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    return v1

    .line 682
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 683
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-eqz p3, :cond_5

    move p3, v1

    goto :goto_0

    :cond_5
    move p3, p1

    :goto_0
    if-eqz p3, :cond_6

    .line 684
    invoke-static {}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$700()Z

    move-result p3

    if-nez p3, :cond_6

    .line 685
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1200(Lcom/android/dialer/app/dialpad/DialpadFragment;)I

    move-result p3

    invoke-static {p2, p3, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1300(Lcom/android/dialer/app/dialpad/DialpadFragment;IIZ)V

    goto :goto_1

    .line 687
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKey isOnLongClick = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$700()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, p1, [Ljava/lang/Object;

    const-string v2, "DialpadFragment"

    invoke-static {v2, p3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-static {}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$700()Z

    move-result p3

    if-nez p3, :cond_7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "onKey call callSpeedNumber"

    .line 689
    invoke-static {v2, p3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1500(Lcom/android/dialer/app/dialpad/DialpadFragment;I)V

    .line 693
    :cond_7
    :goto_1
    invoke-static {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$702(Z)Z

    return v1

    .line 696
    :cond_8
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$702(Z)Z

    return p1

    .line 609
    :pswitch_2
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    const-string v0, "1"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 611
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->clear()V

    .line 613
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    .line 614
    invoke-virtual {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    .line 615
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    .line 618
    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "voicemail"

    .line 617
    invoke-static {v0, v2}, Lcom/android/dialer/telecom/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 616
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 620
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_9

    if-nez v0, :cond_9

    move p2, v1

    goto :goto_2

    :cond_9
    move p2, p1

    :goto_2
    if-nez p2, :cond_a

    .line 624
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    invoke-static {}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$700()Z

    move-result p2

    if-nez p2, :cond_b

    .line 628
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_4

    .line 629
    :cond_b
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-static {}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$700()Z

    move-result p2

    if-nez p2, :cond_e

    .line 632
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    .line 634
    invoke-virtual {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 633
    invoke-static {p2, p3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_c

    move p2, v1

    goto :goto_3

    :cond_c
    move p2, p1

    :goto_3
    if-eqz p2, :cond_d

    .line 638
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1200(Lcom/android/dialer/app/dialpad/DialpadFragment;)I

    move-result p3

    invoke-static {p2, p3, p1, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1300(Lcom/android/dialer/app/dialpad/DialpadFragment;IIZ)V

    goto :goto_4

    .line 644
    :cond_d
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1400(Lcom/android/dialer/app/dialpad/DialpadFragment;)I

    move-result p3

    invoke-static {p2, p3, p1, p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1300(Lcom/android/dialer/app/dialpad/DialpadFragment;IIZ)V

    .line 669
    :cond_e
    :goto_4
    invoke-static {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$702(Z)Z

    :cond_f
    return p1

    .line 602
    :cond_10
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-eqz p2, :cond_11

    .line 603
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p2, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$302(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)Z

    .line 606
    :cond_11
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return p1

    .line 702
    :cond_12
    invoke-static {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$602(Z)Z

    .line 703
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$702(Z)Z

    return v1

    .line 705
    :cond_13
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_14

    .line 706
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$602(Z)Z

    .line 707
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$702(Z)Z

    .line 708
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {p1, p2, p3}, Lcom/android/dialer/app/dialpad/DialpadFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v1

    .line 712
    :cond_14
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$602(Z)Z

    .line 713
    invoke-static {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$702(Z)Z

    return v1

    :cond_15
    :goto_5
    return p1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
