.class Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeedDialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/settings/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedDialAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field final synthetic this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V
    .locals 1

    .line 595
    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 596
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 597
    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$500(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$500(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/util/SparseArray;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 618
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0107

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0901b5

    .line 621
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f090216

    .line 622
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090226

    .line 623
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 628
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 629
    iget-object v4, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {v4}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$600(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 630
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 631
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 632
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v4, 0x30

    .line 633
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 634
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f08022e

    .line 635
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 638
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$500(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/util/SparseArray;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    .line 640
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p3, 0x8

    if-eqz v3, :cond_2

    .line 641
    iget-object v4, v3, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->name:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 642
    iget-object p1, v3, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 644
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 645
    iget-object p1, v3, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->number:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 649
    iget-object v4, v3, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->number:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    const v5, 0x7f11047c

    .line 650
    invoke-virtual {v4, v5}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 649
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_4

    if-nez v3, :cond_4

    .line 652
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 655
    :cond_4
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p2
.end method
