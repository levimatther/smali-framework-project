.class Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"

# interfaces
.implements Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectoryQueryCompleteListener"
.end annotation


# instance fields
.field private final mDirectoryId:J

.field final synthetic this$0:Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;J)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;->this$0:Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-wide p2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;->mDirectoryId:J

    return-void
.end method


# virtual methods
.method public onDataLoaded(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 2

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "DirectoryQueryCompleteListener.onDataLoaded"

    .line 353
    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;->this$0:Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;

    invoke-static {v0}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->access$300(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;)Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onDataLoaded(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 8

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "DirectoryQueryCompleteListener.onQueryComplete"

    .line 359
    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;->this$0:Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;

    iget-wide v6, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;->mDirectoryId:J

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->access$400(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V

    return-void
.end method
