.class Lcom/android/contacts/common/list/ContactListFilterControllerImpl;
.super Lcom/android/contacts/common/list/ContactListFilterController;
.source "ContactListFilterController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterController;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->checkFilterValidity(Z)V

    return-void
.end method

.method private filterAccountExists()Z
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->contains(Lcom/android/contacts/common/model/account/AccountWithDataSet;Z)Z

    move-result v0

    return v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private notifyContactListFilterChanged()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;

    .line 134
    invoke-interface {v1}, Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;->onContactListFilterChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz p2, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {p1, p2}, Lcom/android/contacts/common/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 120
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->notifyContactListFilterChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkFilterValidity(Z)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget v0, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v1, -0x6

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->filterAccountExists()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x2

    .line 156
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    .line 155
    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public removeListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public selectCustomFilter()V
    .locals 2

    const/4 v0, -0x3

    .line 129
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 110
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    return-void
.end method
