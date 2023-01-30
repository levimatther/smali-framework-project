.class Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$1;
.super Ljava/lang/Object;
.source "PhoneFavoritesTileAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/contacts/common/list/ContactEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPreferredSortName(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$1;->this$0:Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    invoke-static {v0}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->access$000(Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/contacts/common/list/ContactEntry;->nameAlternative:Ljava/lang/String;

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p1, Lcom/android/contacts/common/list/ContactEntry;->nameAlternative:Ljava/lang/String;

    return-object p1

    .line 94
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/contacts/common/list/ContactEntry;->namePrimary:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public compare(Lcom/android/contacts/common/list/ContactEntry;Lcom/android/contacts/common/list/ContactEntry;)I
    .locals 3

    .line 85
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p1, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    iget v2, p2, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$1;->getPreferredSortName(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$1;->getPreferredSortName(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 82
    check-cast p1, Lcom/android/contacts/common/list/ContactEntry;

    check-cast p2, Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter$1;->compare(Lcom/android/contacts/common/list/ContactEntry;Lcom/android/contacts/common/list/ContactEntry;)I

    move-result p1

    return p1
.end method
