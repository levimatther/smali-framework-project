.class public Lcom/android/contacts/common/util/AccountFilterUtil;
.super Ljava/lang/Object;
.source "AccountFilterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z
    .locals 7

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090029

    .line 44
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    const v3, 0x7f1102cf

    const v4, 0x7f1102ce

    const/4 v5, -0x3

    const/4 v6, -0x2

    if-eqz p3, :cond_2

    .line 49
    iget p3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne p3, v6, :cond_0

    if-eqz p2, :cond_6

    const p1, 0x7f1102d7

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 54
    :cond_0
    iget p2, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez p2, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    .line 55
    iget-object p1, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object p1, p2, v1

    .line 56
    invoke-virtual {v0, v4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_1
    iget p1, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne p1, v5, :cond_6

    .line 59
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 63
    :cond_2
    iget p3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne p3, v6, :cond_3

    if-eqz p2, :cond_6

    const p1, 0x7f1102d6

    .line 65
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 68
    :cond_3
    iget p2, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez p2, :cond_4

    new-array p2, v2, [Ljava/lang/Object;

    .line 69
    iget-object p1, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object p1, p2, v1

    .line 70
    invoke-virtual {v0, v4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move v1, v2

    goto :goto_1

    .line 72
    :cond_4
    iget p2, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne p2, v5, :cond_5

    .line 73
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 75
    :cond_5
    iget p1, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 p2, -0x6

    if-ne p1, p2, :cond_6

    const p1, 0x7f1102d1

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method public static updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z

    move-result p0

    return p0
.end method
