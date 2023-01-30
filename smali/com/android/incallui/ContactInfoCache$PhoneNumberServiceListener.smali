.class Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/bindings/PhoneNumberService$NumberLookupListener;
.implements Lcom/android/incallui/bindings/PhoneNumberService$ImageLookupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneNumberServiceListener"
.end annotation


# instance fields
.field private final mCallId:Ljava/lang/String;

.field private final mQueryIdOfRemoteLookup:I

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;I)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    iput-object p2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    .line 853
    iput p3, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mQueryIdOfRemoteLookup:I

    return-void
.end method


# virtual methods
.method public onImageFetchComplete(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 918
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneNumberServiceListener.onImageFetchComplete"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    iget v2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mQueryIdOfRemoteLookup:I

    invoke-static {v0, v1, v2}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 922
    :cond_0
    new-instance v0, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;

    iget v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mQueryIdOfRemoteLookup:I

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/ContactInfoCache$CallerInfoQueryToken;-><init>(ILjava/lang/String;)V

    .line 923
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Lcom/android/incallui/ContactInfoCache;->access$1000(Lcom/android/incallui/ContactInfoCache;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 924
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/android/incallui/ContactInfoCache;->onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-void
.end method

.method public onPhoneNumberInfoComplete(Lcom/android/incallui/bindings/PhoneNumberService$PhoneNumberInfo;)V
    .locals 5

    .line 858
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneNumberServiceListener.onPhoneNumberInfoComplete"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    iget v2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mQueryIdOfRemoteLookup:I

    invoke-static {v0, v1, v2}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 866
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Contact lookup done. Remote contact not found."

    invoke-static {p1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object p1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/incallui/ContactInfoCache;->access$600(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    return-void

    .line 870
    :cond_1
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 871
    invoke-interface {p1}, Lcom/android/incallui/bindings/PhoneNumberService$PhoneNumberInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 872
    invoke-interface {p1}, Lcom/android/incallui/bindings/PhoneNumberService$PhoneNumberInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 873
    invoke-interface {p1}, Lcom/android/incallui/bindings/PhoneNumberService$PhoneNumberInfo;->getLookupSource()Lcom/android/dialer/logging/ContactLookupResult$Type;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 874
    invoke-interface {p1}, Lcom/android/incallui/bindings/PhoneNumberService$PhoneNumberInfo;->isBusiness()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isBusiness:Z

    .line 875
    invoke-interface {p1}, Lcom/android/incallui/bindings/PhoneNumberService$PhoneNumberInfo;->getPhoneType()I

    move-result v1

    .line 876
    invoke-interface {p1}, Lcom/android/incallui/bindings/PhoneNumberService$PhoneNumberInfo;->getPhoneLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_2

    .line 878
    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    goto :goto_1

    .line 880
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->access$900(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 881
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 883
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$500(Lcom/android/incallui/ContactInfoCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_4

    .line 889
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 890
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->shouldShowLocation:Z

    iput-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->shouldShowLocation:Z

    .line 892
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    .line 893
    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalPhoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalPhoneNumber:Ljava/lang/String;

    .line 897
    :cond_4
    invoke-interface {p1}, Lcom/android/incallui/bindings/PhoneNumberService$PhoneNumberInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    invoke-interface {p1}, Lcom/android/incallui/bindings/PhoneNumberService$PhoneNumberInfo;->isBusiness()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 898
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Business has no image. Using default."

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$900(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080156

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 900
    iput v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photoType:I

    .line 903
    :cond_5
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "put entry into map: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$500(Lcom/android/incallui/ContactInfoCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/android/incallui/ContactInfoCache;->access$800(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 907
    invoke-interface {p1}, Lcom/android/incallui/bindings/PhoneNumberService$PhoneNumberInfo;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hasPendingQuery:Z

    .line 910
    iget-boolean p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hasPendingQuery:Z

    if-nez p1, :cond_7

    .line 912
    iget-object p1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/incallui/ContactInfoCache;->access$600(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
