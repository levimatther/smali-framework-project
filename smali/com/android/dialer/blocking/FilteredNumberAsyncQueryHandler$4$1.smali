.class Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4$1;
.super Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;Landroid/content/ContentValues;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4$1;->this$1:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;

    iput-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4$1;->val$values:Landroid/content/ContentValues;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;-><init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$1;)V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0

    .line 383
    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4$1;->this$1:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;

    iget-object p1, p1, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;->val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    if-eqz p1, :cond_0

    .line 384
    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4$1;->this$1:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;

    iget-object p1, p1, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;->val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    iget-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4$1;->val$values:Landroid/content/ContentValues;

    invoke-interface {p1, p3, p2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;->onUnblockComplete(ILandroid/content/ContentValues;)V

    :cond_0
    return-void
.end method
