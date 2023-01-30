.class Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileLoaderListener;
.super Ljava/lang/Object;
.source "OldSpeedDialFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/list/OldSpeedDialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactTileLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 0

    .line 446
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/common/ContactTileLoaderFactory;->createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 0

    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileLoaderListener;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object p1

    return-object p1
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

    .line 454
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {p1}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$300(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 455
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {p1}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$300(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialer/app/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->setEmptyViewVisibility(Z)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 439
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/list/OldSpeedDialFragment$ContactTileLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
