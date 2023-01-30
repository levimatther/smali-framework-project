.class public final Lcom/android/dialer/searchfragment/list/NewSearchFragment;
.super Landroid/app/Fragment;
.source "NewSearchFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTACTS_LOADER_ID:I = 0x0

.field private static final NEARBY_PLACES_ID:I = 0x1

.field private static final NETWORK_SEARCH_DELAY_MILLIS:I = 0x12c


# instance fields
.field private adapter:Lcom/android/dialer/searchfragment/list/SearchAdapter;

.field private final loadNearbyPlacesRunnable:Ljava/lang/Runnable;

.field private query:Ljava/lang/String;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Lcom/android/dialer/searchfragment/list/-$$Lambda$NewSearchFragment$6x5_yloSmd8fDT9QnCV5R7ciJ6Y;

    invoke-direct {v0, p0}, Lcom/android/dialer/searchfragment/list/-$$Lambda$NewSearchFragment$6x5_yloSmd8fDT9QnCV5R7ciJ6Y;-><init>(Lcom/android/dialer/searchfragment/list/NewSearchFragment;)V

    iput-object v0, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->loadNearbyPlacesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private loadNearbyPlacesCursor()V
    .locals 4

    .line 117
    invoke-static {}, Lcom/android/dialer/common/concurrent/ThreadUtil;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->loadNearbyPlacesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/extensions/PhoneDirectoryExtenderAccessor;->get(Landroid/content/Context;)Lcom/android/contacts/common/extensions/PhoneDirectoryExtender;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/common/extensions/PhoneDirectoryExtender;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/android/dialer/common/concurrent/ThreadUtil;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->loadNearbyPlacesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$NewSearchFragment()V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
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

    if-nez p1, :cond_0

    .line 73
    new-instance p1, Lcom/android/dialer/searchfragment/cp2/SearchContactsCursorLoader;

    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/dialer/searchfragment/cp2/SearchContactsCursorLoader;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 75
    new-instance p1, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlacesCursorLoader;

    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->query:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlacesCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    .line 77
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid loader id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const p3, 0x7f0c00a0

    .line 58
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/android/dialer/searchfragment/list/SearchAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/dialer/searchfragment/list/SearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->adapter:Lcom/android/dialer/searchfragment/list/SearchAdapter;

    const p2, 0x7f090260

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    iget-object p2, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->adapter:Lcom/android/dialer/searchfragment/list/SearchAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p2

    invoke-virtual {p2, v0, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 65
    invoke-direct {p0}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->loadNearbyPlacesCursor()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->adapter:Lcom/android/dialer/searchfragment/list/SearchAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/searchfragment/list/SearchAdapter;->setNearbyPlacesCursor(Landroid/database/Cursor;)V

    .line 111
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->adapter:Lcom/android/dialer/searchfragment/list/SearchAdapter;

    invoke-virtual {v0, v1}, Lcom/android/dialer/searchfragment/list/SearchAdapter;->setContactsCursor(Landroid/database/Cursor;)V

    .line 112
    invoke-static {}, Lcom/android/dialer/common/concurrent/ThreadUtil;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->loadNearbyPlacesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    .line 83
    instance-of v0, p1, Lcom/android/dialer/searchfragment/cp2/SearchContactsCursorLoader;

    if-eqz v0, :cond_0

    .line 84
    iget-object p1, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->adapter:Lcom/android/dialer/searchfragment/list/SearchAdapter;

    invoke-virtual {p1, p2}, Lcom/android/dialer/searchfragment/list/SearchAdapter;->setContactsCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 85
    :cond_0
    instance-of v0, p1, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlacesCursorLoader;

    if-eqz v0, :cond_1

    .line 86
    iget-object p1, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->adapter:Lcom/android/dialer/searchfragment/list/SearchAdapter;

    invoke-virtual {p1, p2}, Lcom/android/dialer/searchfragment/list/SearchAdapter;->setNearbyPlacesCursor(Landroid/database/Cursor;)V

    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid loader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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

    .line 94
    iget-object p1, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->adapter:Lcom/android/dialer/searchfragment/list/SearchAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/searchfragment/list/SearchAdapter;->clear()V

    .line 95
    iget-object p1, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1

    .line 99
    iput-object p1, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->query:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->adapter:Lcom/android/dialer/searchfragment/list/SearchAdapter;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lcom/android/dialer/searchfragment/list/SearchAdapter;->setQuery(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->loadNearbyPlacesCursor()V

    :cond_0
    return-void
.end method
