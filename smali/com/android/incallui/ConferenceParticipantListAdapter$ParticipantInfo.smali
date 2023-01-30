.class Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
.super Ljava/lang/Object;
.source "ConferenceParticipantListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParticipantInfo"
.end annotation


# instance fields
.field private mCacheLookupComplete:Z

.field private mCall:Lcom/android/incallui/call/DialerCall;

.field private mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;


# direct methods
.method public constructor <init>(Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 527
    iput-boolean v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    .line 530
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 531
    iput-object p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 560
    instance-of v0, p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    if-eqz v0, :cond_0

    .line 561
    check-cast p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 562
    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCall()Lcom/android/incallui/call/DialerCall;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/call/DialerCall;

    return-object v0
.end method

.method public getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCacheLookupComplete()Z
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    return v0
.end method

.method public setCacheLookupComplete(Z)V
    .locals 0

    .line 555
    iput-boolean p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCacheLookupComplete:Z

    return-void
.end method

.method public setCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mCall:Lcom/android/incallui/call/DialerCall;

    return-void
.end method

.method public setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-void
.end method
