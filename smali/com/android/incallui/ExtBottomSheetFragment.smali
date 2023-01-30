.class public Lcom/android/incallui/ExtBottomSheetFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "ExtBottomSheetFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ExtBottomSheetFragment$ExtBottomSheetActionCallback;
    }
.end annotation


# static fields
.field private static final OPTIONS:Ljava/lang/String; = "options"


# instance fields
.field private final COLOR_ITEM_BACKGROUND:Ljava/lang/String;

.field private final COLOR_ITEM_BORDER:Ljava/lang/String;

.field private final COLOR_TEXT:Ljava/lang/String;

.field private final OPTIONS_PER_ROW:I

.field private final PADDING_SHEET_ITEM:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    const/4 v0, 0x4

    .line 72
    iput v0, p0, Lcom/android/incallui/ExtBottomSheetFragment;->OPTIONS_PER_ROW:I

    const/16 v0, 0x30

    .line 73
    iput v0, p0, Lcom/android/incallui/ExtBottomSheetFragment;->PADDING_SHEET_ITEM:I

    const-string v0, "#E5E4E2"

    .line 74
    iput-object v0, p0, Lcom/android/incallui/ExtBottomSheetFragment;->COLOR_TEXT:Ljava/lang/String;

    const-string v1, "#0041C2"

    .line 75
    iput-object v1, p0, Lcom/android/incallui/ExtBottomSheetFragment;->COLOR_ITEM_BACKGROUND:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/android/incallui/ExtBottomSheetFragment;->COLOR_ITEM_BORDER:Ljava/lang/String;

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ExtBottomSheet"

    .line 196
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ExtBottomSheet"

    .line 192
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static newInstance(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/incallui/ExtBottomSheetFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/incallui/ExtBottomSheetFragment;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newInstance with values : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ExtBottomSheetFragment;->logi(Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/android/incallui/ExtBottomSheetFragment;

    invoke-direct {v0}, Lcom/android/incallui/ExtBottomSheetFragment;-><init>()V

    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 100
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 101
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 102
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 103
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "options"

    .line 104
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 105
    invoke-virtual {v0, v1}, Lcom/android/incallui/ExtBottomSheetFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private newTextView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .line 153
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/ExtBottomSheetFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/16 v1, 0x30

    .line 158
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 159
    invoke-direct {p0}, Lcom/android/incallui/ExtBottomSheetFragment;->textViewBorder()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "#E5E4E2"

    .line 160
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v1, Lcom/android/incallui/ExtBottomSheetFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/ExtBottomSheetFragment$1;-><init>(Lcom/android/incallui/ExtBottomSheetFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private textViewBorder()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 179
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v1, "#0041C2"

    .line 180
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const-string v1, "#E5E4E2"

    .line 181
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 142
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "onAttach"

    .line 143
    invoke-static {v0}, Lcom/android/incallui/ExtBottomSheetFragment;->logi(Ljava/lang/String;)V

    .line 144
    const-class v0, Lcom/android/incallui/ExtBottomSheetFragment$ExtBottomSheetActionCallback;

    invoke-static {p0, v0}, Lcom/android/dialer/common/FragmentUtils;->checkParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)V

    .line 145
    iput-object p1, p0, Lcom/android/incallui/ExtBottomSheetFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const-string p1, "onCreateView"

    .line 114
    invoke-static {p1}, Lcom/android/incallui/ExtBottomSheetFragment;->logi(Ljava/lang/String;)V

    .line 115
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/incallui/ExtBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/incallui/ExtBottomSheetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "options"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 p3, 0x1

    .line 117
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz p2, :cond_2

    .line 120
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 121
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    div-int/lit8 p3, v0, 0x4

    goto :goto_0

    :cond_0
    div-int/lit8 v1, v0, 0x4

    add-int/2addr p3, v1

    .line 124
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView: numOfOptions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " numberOfRows: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ExtBottomSheetFragment;->logi(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, p3, :cond_2

    .line 126
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/incallui/ExtBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move v5, v1

    :goto_2
    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    if-ge v3, v0, :cond_1

    .line 129
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/incallui/ExtBottomSheetFragment;->newTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 133
    :cond_1
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_2
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 188
    const-class p1, Lcom/android/incallui/ExtBottomSheetFragment$ExtBottomSheetActionCallback;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/ExtBottomSheetFragment$ExtBottomSheetActionCallback;

    invoke-interface {p1}, Lcom/android/incallui/ExtBottomSheetFragment$ExtBottomSheetActionCallback;->sheetDismissed()V

    return-void
.end method
