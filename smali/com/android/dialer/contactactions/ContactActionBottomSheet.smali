.class public Lcom/android/dialer/contactactions/ContactActionBottomSheet;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "ContactActionBottomSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final contact:Lcom/android/dialer/dialercontact/DialerContact;

.field private final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/contactactions/ContactActionModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/dialer/dialercontact/DialerContact;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/dialer/dialercontact/DialerContact;",
            "Ljava/util/List<",
            "Lcom/android/dialer/contactactions/ContactActionModule;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p3, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->modules:Ljava/util/List;

    .line 54
    iput-object p2, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0102

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private getContactView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 82
    invoke-virtual {p0}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0051

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    const v0, 0x7f09025b

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/QuickContactBadge;

    iget-object v0, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 88
    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->hasContactUri()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getContactUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    iget-object v0, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 89
    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoId()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 90
    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->hasPhotoUri()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object v8, v1

    :goto_1
    iget-object v0, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 91
    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 92
    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getContactType()I

    move-result v10

    .line 86
    invoke-virtual/range {v3 .. v10}, Lcom/android/contacts/common/ContactPhotoManager;->loadDialerThumbnailOrPhoto(Landroid/widget/QuickContactBadge;Landroid/net/Uri;JLandroid/net/Uri;Ljava/lang/String;I)V

    const v0, 0x7f0900df

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f090237

    .line 95
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 97
    iget-object v4, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v4}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 101
    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 102
    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100f5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 106
    invoke-virtual {v5}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 107
    invoke-virtual {v5}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 104
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    .line 110
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-object p1
.end method

.method private getDividerView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007c

    const/4 v2, 0x0

    .line 118
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getModuleView(Landroid/view/ViewGroup;Lcom/android/dialer/contactactions/ContactActionModule;)Landroid/view/View;
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c0

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09020a

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/dialer/contactactions/ContactActionModule;->getStringId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090209

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 126
    invoke-interface {p2}, Lcom/android/dialer/contactactions/ContactActionModule;->getDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static show(Landroid/content/Context;Lcom/android/dialer/dialercontact/DialerContact;Ljava/util/List;)Lcom/android/dialer/contactactions/ContactActionBottomSheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/dialer/dialercontact/DialerContact;",
            "Ljava/util/List<",
            "Lcom/android/dialer/contactactions/ContactActionModule;",
            ">;)",
            "Lcom/android/dialer/contactactions/ContactActionBottomSheet;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;-><init>(Landroid/content/Context;Lcom/android/dialer/dialercontact/DialerContact;Ljava/util/List;)V

    .line 61
    invoke-virtual {v0}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->show()V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/contactactions/ContactActionModule;

    invoke-interface {p1}, Lcom/android/dialer/contactactions/ContactActionModule;->onClick()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090034

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->getContactView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/contactactions/ContactActionModule;

    .line 72
    instance-of v2, v1, Lcom/android/dialer/contactactions/DividerModule;

    if-eqz v2, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->getDividerView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/contactactions/ContactActionBottomSheet;->getModuleView(Landroid/view/ViewGroup;Lcom/android/dialer/contactactions/ContactActionModule;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method
