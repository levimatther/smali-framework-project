.class final Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryQueryCompleteListenerFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mIsListenerCalled:Z

.field private final mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput p2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    .line 290
    iput-object p3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    const/4 p2, 0x0

    .line 291
    iput-boolean p2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mIsListenerCalled:Z

    .line 292
    iput-object p1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;)Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V
    .locals 0

    .line 279
    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->onDirectoryQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V

    return-void
.end method

.method private addCallerInfoIntoCache(Lcom/android/incallui/CallerInfo;J)V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    .line 316
    invoke-static {v0}, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->get(Landroid/content/Context;)Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;->getCachedNumberLookupService()Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    move-result-object v0

    .line 317
    iget-boolean v1, p1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 320
    invoke-static {v0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCachedContactInfo(Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;Lcom/android/incallui/CallerInfo;)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f110202

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-interface {v1, v2, p2, p3}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;->setDirectorySource(Ljava/lang/String;J)V

    .line 323
    iget-object p2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    invoke-interface {v0, p2, v1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->addContact(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;)V

    .line 326
    iget-object p2, p1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 327
    :try_start_0
    iget-object p2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    .line 328
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    .line 330
    :try_start_1
    iget-object p3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-interface {v0, p3, p1, p2}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->addPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 327
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_0

    .line 332
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p3

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "CallerInfoAsyncQuery"

    const-string p3, "failed to fetch directory contact photo"

    .line 333
    invoke-static {p2, p3, p1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private onDirectoryQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V
    .locals 2

    .line 298
    monitor-enter p0

    .line 299
    :try_start_0
    iget v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    .line 300
    iget-boolean v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mIsListenerCalled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    if-nez v0, :cond_1

    .line 301
    :cond_0
    iput-boolean v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mIsListenerCalled:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 304
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_2

    .line 309
    invoke-direct {p0, p3, p4, p5}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->addCallerInfoIntoCache(Lcom/android/incallui/CallerInfo;J)V

    .line 310
    iget-object p4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-interface {p4, p1, p2, p3}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 304
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method newListener(J)Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .locals 1

    .line 340
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;J)V

    return-object v0
.end method
