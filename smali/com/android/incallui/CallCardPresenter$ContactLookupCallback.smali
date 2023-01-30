.class public Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactLookupCallback"
.end annotation


# instance fields
.field private final mCallCardPresenter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/incallui/CallCardPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsPrimary:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/CallCardPresenter;Z)V
    .locals 1

    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1233
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    .line 1234
    iput-boolean p2, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mIsPrimary:Z

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    .line 1239
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    if-eqz v0, :cond_0

    .line 1241
    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mIsPrimary:Z

    invoke-static {v0, p1, p2, v1}, Lcom/android/incallui/CallCardPresenter;->access$400(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    if-eqz v0, :cond_0

    .line 1249
    invoke-static {v0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->access$500(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method
