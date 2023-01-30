.class public Lcom/android/dialer/app/list/BlockedListSearchFragment;
.super Lcom/android/dialer/app/list/RegularSearchFragment;
.source "BlockedListSearchFragment.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;


# instance fields
.field private mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

.field private final mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

.field private final mSearchLayoutCallback:Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;

.field private mSearchView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/android/dialer/app/list/BlockedListSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment$1;-><init>(Lcom/android/dialer/app/list/BlockedListSearchFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    .line 59
    new-instance v0, Lcom/android/dialer/app/list/BlockedListSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment$2;-><init>(Lcom/android/dialer/app/list/BlockedListSearchFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment;->mSearchLayoutCallback:Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;

    return-void
.end method

.method private blockContactNumber(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8

    if-eqz p2, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 232
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110062

    .line 231
    invoke-static {v0, v1, p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    .line 229
    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f090073

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 244
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    move-object v1, p2

    move-object v2, p1

    move-object v4, p1

    move-object v7, p0

    .line 238
    invoke-static/range {v1 .. v7}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->show(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    return-void
.end method

.method private blockNumber(Ljava/lang/String;)V
    .locals 3

    .line 166
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/dialer/app/list/BlockedListSearchFragment$3;-><init>(Lcom/android/dialer/app/list/BlockedListSearchFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private goBack()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .line 124
    new-instance v0, Lcom/android/dialer/app/list/BlockedListSearchAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->setDisplayPhotos(Z)V

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->setUseCallableUri(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->setQueryString(Ljava/lang/String;)V

    return-object v0
.end method

.method public onChangeFilteredNumberUndo()V
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/dialer/app/list/RegularSearchFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->setShowEmptyListForNullQuery(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->setQueryString(Ljava/lang/String;)V

    .line 85
    new-instance p1, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    return-void
.end method

.method public onFilterNumberSuccess()V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/InteractionEvent$Type;->BLOCK_NUMBER_MANAGEMENT_SCREEN:Lcom/android/dialer/logging/InteractionEvent$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    .line 203
    invoke-direct {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->goBack()V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 135
    invoke-super/range {p0 .. p5}, Lcom/android/dialer/app/list/RegularSearchFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 136
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 137
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/list/BlockedListSearchAdapter;

    .line 138
    invoke-virtual {p1, p3}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->getShortcutTypeFromPosition(I)I

    move-result p4

    const p5, 0x7f09006c

    .line 139
    invoke-virtual {p2, p5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 p5, -0x1

    if-eq p4, p5, :cond_1

    const/4 p2, 0x5

    if-eq p4, p2, :cond_0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignoring unsupported shortcut type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "BlockedListSearchFragment.onItemClick"

    invoke-static {p3, p1, p2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->getQueryString()Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->blockNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/dialer/app/list/BlockedListSearchAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->blockContactNumber(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 90
    invoke-super {p0}, Lcom/android/dialer/app/list/RegularSearchFragment;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00f9

    .line 93
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 96
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 99
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f09029a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/widget/SearchEditTextLayout;

    .line 100
    invoke-virtual {v0, v2, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->expand(ZZ)V

    .line 101
    iget-object v1, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment;->mSearchLayoutCallback:Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setCallback(Lcom/android/dialer/app/widget/SearchEditTextLayout$Callback;)V

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f090299

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment;->mSearchView:Landroid/widget/EditText;

    .line 105
    iget-object v3, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    iget-object v1, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment;->mSearchView:Landroid/widget/EditText;

    const v3, 0x7f11007d

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    const v1, 0x7f09028d

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/list/BlockedListSearchFragment;->mSearchView:Landroid/widget/EditText;

    .line 119
    invoke-virtual {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070076

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 117
    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    return-void
.end method

.method public onUnfilterNumberSuccess()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BlockedListSearchFragment.onUnfilterNumberSuccess"

    const-string/jumbo v2, "unblocked a number from the BlockedListSearchFragment"

    .line 208
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-direct {p0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->goBack()V

    return-void
.end method
