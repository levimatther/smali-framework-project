.class Lcom/android/incallui/ConferenceParticipantListAdapter$3;
.super Ljava/lang/Object;
.source "ConferenceParticipantListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;->sortParticipantList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$3;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;)I
    .locals 3

    .line 448
    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object p1

    .line 449
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$3;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    .line 451
    invoke-static {v1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$100(Lcom/android/incallui/ConferenceParticipantListAdapter;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v1

    .line 450
    invoke-static {v0, p1, v1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredSortName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 454
    :goto_0
    invoke-virtual {p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object p2

    .line 455
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$3;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    .line 457
    invoke-static {v2}, Lcom/android/incallui/ConferenceParticipantListAdapter;->access$100(Lcom/android/incallui/ConferenceParticipantListAdapter;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v2

    .line 456
    invoke-static {v1, p2, v2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredSortName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object v0, p2

    .line 460
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 444
    check-cast p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    check-cast p2, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$3;->compare(Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;)I

    move-result p1

    return p1
.end method
