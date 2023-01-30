.class Lcom/android/dialer/app/dialpad/DialpadFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/PhoneNumberPickerFragment$OnLoadFinishedListener;


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

    .line 741
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 14

    .line 745
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$900(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 753
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1600(Lcom/android/dialer/app/dialpad/DialpadFragment;)Lcom/android/dialer/app/list/SmartDialSearchFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const-string v2, "DialpadFragment"

    if-eqz v1, :cond_1

    .line 755
    invoke-virtual {v1}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v3

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1702(Lcom/android/dialer/app/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    const/16 v3, 0xa

    .line 761
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1600(Lcom/android/dialer/app/dialpad/DialpadFragment;)Lcom/android/dialer/app/list/SmartDialSearchFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->getList()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gt v4, v5, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    .line 762
    :goto_0
    iget-object v7, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v7}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1800(Lcom/android/dialer/app/dialpad/DialpadFragment;Ljava/lang/String;)Z

    move-result v7

    .line 763
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LoadFinished isEmergency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v8, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v8}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1900(Lcom/android/dialer/app/dialpad/DialpadFragment;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 766
    iget-object v8, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v8}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/16 v8, 0x8

    if-eqz v0, :cond_4

    .line 770
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 772
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 775
    :cond_4
    iget-object v9, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v9}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 777
    iget-object v9, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v9}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v0, :cond_5

    goto/16 :goto_5

    .line 783
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LoadFinished isNumber == "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_6

    .line 786
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 787
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/android/dialer/app/settings/SpeedDialUtils;->getNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1702(Lcom/android/dialer/app/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    :cond_6
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v9, 0x7f0902c8

    const v10, 0x7f0902c9

    const v11, 0x7f0902c7

    const v12, 0x7f11049a

    const-string v13, " ("

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2300(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "LoadFinished mEditText == 1"

    .line 791
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 794
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 795
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 797
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    .line 798
    invoke-virtual {v4}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " #1)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 799
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f110560

    .line 800
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 801
    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->setSpeedDialLayoutTextSize(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 802
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 804
    :cond_7
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1700(Lcom/android/dialer/app/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    if-eqz v7, :cond_b

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadFinished phoneNumber != null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1700(Lcom/android/dialer/app/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    move v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 809
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 810
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 812
    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 815
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    .line 816
    invoke-static {v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1700(Lcom/android/dialer/app/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 815
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 817
    iget-object v5, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2500()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2600(Lcom/android/dialer/app/dialpad/DialpadFragment;Landroid/net/Uri;[Ljava/lang/String;)Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2402(Lcom/android/dialer/app/dialpad/DialpadFragment;Lcom/android/dialer/app/dialpad/DialpadFragment$Record;)Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    .line 818
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2400(Lcom/android/dialer/app/dialpad/DialpadFragment;)Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    move-result-object v4

    if-nez v4, :cond_9

    .line 819
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    new-instance v5, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    iget-object v6, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v6}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1700(Lcom/android/dialer/app/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2402(Lcom/android/dialer/app/dialpad/DialpadFragment;Lcom/android/dialer/app/dialpad/DialpadFragment$Record;)Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    .line 821
    :cond_9
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v4}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2400(Lcom/android/dialer/app/dialpad/DialpadFragment;)Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    move-result-object v4

    iget-object v4, v4, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;->name:Ljava/lang/String;

    const-string v5, ")"

    const-string v6, " #"

    if-nez v4, :cond_a

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    .line 823
    invoke-virtual {v7}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 825
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v7}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2400(Lcom/android/dialer/app/dialpad/DialpadFragment;)Lcom/android/dialer/app/dialpad/DialpadFragment$Record;

    move-result-object v7

    iget-object v7, v7, Lcom/android/dialer/app/dialpad/DialpadFragment$Record;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    .line 826
    invoke-virtual {v7}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 830
    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v4, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v4}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/dialer/app/settings/SpeedDialUtils;->getNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->setSpeedDialLayoutTextSize(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 833
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 834
    :cond_b
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1700(Lcom/android/dialer/app/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadFinished isEmpty = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_c

    .line 837
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 839
    :cond_c
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v1, :cond_d

    .line 842
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 843
    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v3, 0xa6

    .line 844
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 845
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    invoke-virtual {v1}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listview.height = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_d
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 851
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f0900d1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 852
    iget-object v2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f0900d0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 853
    iget-object v3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->setSpeedDialLayoutTextSize(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 857
    :goto_3
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 860
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2700(Lcom/android/dialer/app/dialpad/DialpadFragment;)V

    return-void

    .line 778
    :cond_f
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadFinished mEditText.length() == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_6

    :cond_10
    move v5, v6

    :goto_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2100(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$2200(Lcom/android/dialer/app/dialpad/DialpadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
