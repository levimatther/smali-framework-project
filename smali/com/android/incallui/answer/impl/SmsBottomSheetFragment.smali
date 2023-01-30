.class public Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "SmsBottomSheetFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$SmsSheetHolder;
    }
.end annotation


# static fields
.field private static final ARG_OPTIONS:Ljava/lang/String; = "options"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;

    invoke-direct {v0}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "options"

    .line 52
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private newTextViewItem(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101030e

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 93
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->getTheme()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 94
    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    const v3, 0x7f1100b5

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 101
    invoke-static {v1, v3}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 102
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f060041

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f1201b3

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 107
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v1, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$1;-><init>(Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public getTheme()I
    .locals 1

    const v0, 0x7f1201f7

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 80
    const-class p1, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$SmsSheetHolder;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->checkParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SmsBottomSheetFragment.onCreateDialog"

    const/4 v2, 0x0

    .line 85
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 61
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "options"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    .line 66
    invoke-direct {p0, p3}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->newTextViewItem(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 69
    invoke-direct {p0, p2}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment;->newTextViewItem(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 131
    const-class p1, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$SmsSheetHolder;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$SmsSheetHolder;

    invoke-interface {p1}, Lcom/android/incallui/answer/impl/SmsBottomSheetFragment$SmsSheetHolder;->smsDismissed()V

    return-void
.end method
