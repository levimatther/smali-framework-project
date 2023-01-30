.class Lcom/android/dialer/app/contactinfo/ContactInfoCache$InnerHandler;
.super Landroid/os/Handler;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/contactinfo/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerHandler"
.end annotation


# instance fields
.field private final contactInfoCacheWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/dialer/app/contactinfo/ContactInfoCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/dialer/app/contactinfo/ContactInfoCache;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$InnerHandler;->contactInfoCacheWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$InnerHandler;->contactInfoCacheWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->access$100(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v0}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->access$000(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;->onContactInfoChanged()V

    :goto_0
    return-void
.end method
