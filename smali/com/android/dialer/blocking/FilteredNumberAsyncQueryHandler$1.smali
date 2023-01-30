.class Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$1;
.super Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->hasBlockedNumbers(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

.field final synthetic val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$1;->this$0:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    iput-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$1;->val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;-><init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$1;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    .line 102
    :try_start_0
    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$1;->val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;->onHasBlockedNumbers(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 105
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_2
    throw p1
.end method
