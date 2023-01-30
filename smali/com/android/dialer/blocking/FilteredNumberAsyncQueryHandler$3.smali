.class Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$3;
.super Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

.field final synthetic val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$3;->this$0:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    iput-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$3;->val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;-><init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$1;)V

    return-void
.end method


# virtual methods
.method public onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    .line 324
    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$3;->val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;

    if-eqz p1, :cond_0

    .line 325
    invoke-interface {p1, p3}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;->onBlockComplete(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
