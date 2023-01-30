.class public Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;
.super Landroid/app/ListFragment;
.source "BlockedNumbersFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker$Callback;"
    }
.end annotation


# static fields
.field private static final ADD_BLOCKED_NUMBER_ICON_LETTER:C = '+'


# instance fields
.field private blockedNumbersMigratorForTest:Lcom/android/dialer/blocking/BlockedNumbersMigrator;

.field private blockedNumbersText:Landroid/widget/TextView;

.field private footerText:Landroid/widget/TextView;

.field private mAdapter:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;

.field private mBlockedNumberListDivider:Landroid/view/View;

.field private mBlockedNumbersDisabledForEmergency:Landroid/view/View;

.field private mImportSettings:Landroid/view/View;

.field private mVoicemailEnabledChecker:Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;

.field protected migratePromoView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mImportSettings:Landroid/view/View;

    return-object p0
.end method

.method private updateActiveVoicemailProvider()V
    .locals 2

    .line 258
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mVoicemailEnabledChecker:Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;

    invoke-virtual {v0}, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->isVisualVoicemailEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->footerText:Landroid/widget/TextView;

    const v1, 0x7f11007b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->footerText:Landroid/widget/TextView;

    const v1, 0x7f11007a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 72
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0c0039

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0c0037

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f090044

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 76
    new-instance v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;)V

    const/16 v1, 0x2b

    .line 77
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setLetter(Ljava/lang/Character;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 79
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f06001f

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setColor(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setIsCircular(Z)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mAdapter:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;

    if-nez p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 85
    invoke-static {p1, v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;->newBlockedNumbersAdapter(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mAdapter:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mAdapter:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const v0, 0x7f090072

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->blockedNumbersText:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const v0, 0x7f090202

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->migratePromoView:Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const v0, 0x7f090203

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const v0, 0x7f090194

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mImportSettings:Landroid/view/View;

    .line 95
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const v0, 0x7f090074

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mBlockedNumbersDisabledForEmergency:Landroid/view/View;

    .line 96
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f090071

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mBlockedNumberListDivider:Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const v0, 0x7f090192

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const v0, 0x7f090348

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const v0, 0x7f090045

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f09006f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->footerText:Landroid/widget/TextView;

    .line 102
    new-instance p1, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;

    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;-><init>(Landroid/content/Context;Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker$Callback;)V

    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mVoicemailEnabledChecker:Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;

    .line 103
    invoke-virtual {p1}, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->asyncUpdate()V

    .line 104
    invoke-direct {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->updateActiveVoicemailProvider()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 214
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090045

    if-ne v1, v2, :cond_1

    .line 221
    invoke-virtual {v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->showSearchUi()V

    goto :goto_1

    :cond_1
    const v2, 0x7f090348

    if-ne v1, v2, :cond_2

    .line 223
    invoke-virtual {v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->showNumbersToImportPreviewUi()V

    goto :goto_1

    :cond_2
    const v2, 0x7f090192

    if-ne v1, v2, :cond_3

    .line 225
    new-instance p1, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$2;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$2;-><init>(Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;)V

    invoke-static {v0, p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->importSendToVoicemailContacts(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V

    goto :goto_1

    :cond_3
    const v2, 0x7f090203

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 235
    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->blockedNumbersMigratorForTest:Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    .line 237
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/dialer/blocking/BlockedNumbersMigrator;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v1, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$3;-><init>(Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;)V

    .line 238
    invoke-virtual {p1, v1}, Lcom/android/dialer/blocking/BlockedNumbersMigrator;->migrate(Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const-string p1, "_id"

    const-string p2, "country_iso"

    const-string v0, "number"

    const-string v1, "normalized_number"

    .line 178
    filled-new-array {p1, p2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    .line 188
    new-instance p1, Landroid/content/CursorLoader;

    .line 189
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "type=1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0038

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 199
    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mAdapter:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 200
    invoke-static {}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mBlockedNumberListDivider:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 201
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mBlockedNumberListDivider:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 209
    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mAdapter:Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 121
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 123
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 125
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0600be

    invoke-static {v2, v3}, Landroidx/core/app/ActivityCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 126
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const/4 v2, 0x1

    .line 128
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 129
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 130
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const v2, 0x7f1102ec

    .line 131
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 136
    invoke-static {}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->migratePromoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->blockedNumbersText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v3, 0x7f090045

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mBlockedNumberListDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mImportSettings:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v4, 0x7f090192

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v4, 0x7f090348

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mBlockedNumbersDisabledForEmergency:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->footerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment$1;-><init>(Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;)V

    .line 148
    invoke-static {v0, v3}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->checkForSendToVoicemailContact(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;)V

    .line 160
    :goto_0
    invoke-static {}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->hasRecentEmergencyCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mBlockedNumbersDisabledForEmergency:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mBlockedNumbersDisabledForEmergency:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->mVoicemailEnabledChecker:Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;

    invoke-virtual {v0}, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->asyncUpdate()V

    return-void
.end method

.method public onVisualVoicemailEnabledStatusChanged(Z)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->updateActiveVoicemailProvider()V

    return-void
.end method

.method setBlockedNumbersMigratorForTest(Lcom/android/dialer/blocking/BlockedNumbersMigrator;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;->blockedNumbersMigratorForTest:Lcom/android/dialer/blocking/BlockedNumbersMigrator;

    return-void
.end method
