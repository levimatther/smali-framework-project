.class public final Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CallSpecificAppData.java"

# interfaces
.implements Lcom/android/dialer/callintent/CallSpecificAppDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callintent/CallSpecificAppData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/callintent/CallSpecificAppData;",
        "Lcom/android/dialer/callintent/CallSpecificAppData$Builder;",
        ">;",
        "Lcom/android/dialer/callintent/CallSpecificAppDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 830
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$000()Lcom/android/dialer/callintent/CallSpecificAppData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/callintent/CallSpecificAppData$1;)V
    .locals 0

    .line 823
    invoke-direct {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSpeedDialContactType(Ljava/lang/Iterable;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/dialer/callintent/SpeedDialContactType$Type;",
            ">;)",
            "Lcom/android/dialer/callintent/CallSpecificAppData$Builder;"
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 971
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$900(Lcom/android/dialer/callintent/CallSpecificAppData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllUiActionTimestampsSinceAppLaunch(Ljava/lang/Iterable;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/dialer/callintent/CallSpecificAppData$Builder;"
        }
    .end annotation

    .line 1210
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1211
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$2300(Lcom/android/dialer/callintent/CallSpecificAppData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllUiActionsSinceAppLaunch(Ljava/lang/Iterable;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/dialer/logging/UiAction$Type;",
            ">;)",
            "Lcom/android/dialer/callintent/CallSpecificAppData$Builder;"
        }
    .end annotation

    .line 1148
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1149
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$1900(Lcom/android/dialer/callintent/CallSpecificAppData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSpeedDialContactType(Lcom/android/dialer/callintent/SpeedDialContactType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 962
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$800(Lcom/android/dialer/callintent/CallSpecificAppData;Lcom/android/dialer/callintent/SpeedDialContactType$Type;)V

    return-object p0
.end method

.method public addUiActionTimestampsSinceAppLaunch(J)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1201
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1202
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$2200(Lcom/android/dialer/callintent/CallSpecificAppData;J)V

    return-object p0
.end method

.method public addUiActionsSinceAppLaunch(Lcom/android/dialer/logging/UiAction$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1135
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$1800(Lcom/android/dialer/callintent/CallSpecificAppData;Lcom/android/dialer/logging/UiAction$Type;)V

    return-object p0
.end method

.method public clearCallInitiationType()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 860
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 861
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$200(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearCharactersInSearchString()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 922
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 923
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$600(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearLightbringerButtonAppearInCollapsedCallLogItemCount()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1327
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1328
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$3000(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearLightbringerButtonAppearInExpandedCallLogItemCount()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1296
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1297
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$2800(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearLightbringerButtonAppearInSearchCount()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1358
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1359
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$3200(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearPositionOfSelectedSearchResult()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 891
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 892
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$400(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearSpeedDialContactPosition()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1009
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$1200(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearSpeedDialContactType()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 977
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 978
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$1000(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearStartingTabIndex()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1249
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1250
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$2600(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearTimeSinceAppLaunch()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1039
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$1400(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearTimeSinceFirstClick()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1070
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1071
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$1600(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearUiActionTimestampsSinceAppLaunch()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1218
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1219
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$2400(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public clearUiActionsSinceAppLaunch()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1160
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1161
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$2000(Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-object p0
.end method

.method public getCallInitiationType()Lcom/android/dialer/callintent/CallInitiationType$Type;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getCallInitiationType()Lcom/android/dialer/callintent/CallInitiationType$Type;

    move-result-object v0

    return-object v0
.end method

.method public getCharactersInSearchString()I
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getCharactersInSearchString()I

    move-result v0

    return v0
.end method

.method public getLightbringerButtonAppearInCollapsedCallLogItemCount()I
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getLightbringerButtonAppearInCollapsedCallLogItemCount()I

    move-result v0

    return v0
.end method

.method public getLightbringerButtonAppearInExpandedCallLogItemCount()I
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getLightbringerButtonAppearInExpandedCallLogItemCount()I

    move-result v0

    return v0
.end method

.method public getLightbringerButtonAppearInSearchCount()I
    .locals 1

    .line 1344
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getLightbringerButtonAppearInSearchCount()I

    move-result v0

    return v0
.end method

.method public getPositionOfSelectedSearchResult()I
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getPositionOfSelectedSearchResult()I

    move-result v0

    return v0
.end method

.method public getSpeedDialContactPosition()I
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getSpeedDialContactPosition()I

    move-result v0

    return v0
.end method

.method public getSpeedDialContactType(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->getSpeedDialContactType(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    move-result-object p1

    return-object p1
.end method

.method public getSpeedDialContactTypeCount()I
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getSpeedDialContactTypeCount()I

    move-result v0

    return v0
.end method

.method public getSpeedDialContactTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/callintent/SpeedDialContactType$Type;",
            ">;"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getSpeedDialContactTypeList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartingTabIndex()I
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getStartingTabIndex()I

    move-result v0

    return v0
.end method

.method public getTimeSinceAppLaunch()J
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getTimeSinceAppLaunch()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeSinceFirstClick()J
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getTimeSinceFirstClick()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUiActionTimestampsSinceAppLaunch(I)J
    .locals 2

    .line 1186
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->getUiActionTimestampsSinceAppLaunch(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUiActionTimestampsSinceAppLaunchCount()I
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getUiActionTimestampsSinceAppLaunchCount()I

    move-result v0

    return v0
.end method

.method public getUiActionTimestampsSinceAppLaunchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1171
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 1172
    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getUiActionTimestampsSinceAppLaunchList()Ljava/util/List;

    move-result-object v0

    .line 1171
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUiActionsSinceAppLaunch(I)Lcom/android/dialer/logging/UiAction$Type;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->getUiActionsSinceAppLaunch(I)Lcom/android/dialer/logging/UiAction$Type;

    move-result-object p1

    return-object p1
.end method

.method public getUiActionsSinceAppLaunchCount()I
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getUiActionsSinceAppLaunchCount()I

    move-result v0

    return v0
.end method

.method public getUiActionsSinceAppLaunchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/logging/UiAction$Type;",
            ">;"
        }
    .end annotation

    .line 1085
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getUiActionsSinceAppLaunchList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCallInitiationType()Z
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasCallInitiationType()Z

    move-result v0

    return v0
.end method

.method public hasCharactersInSearchString()Z
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasCharactersInSearchString()Z

    move-result v0

    return v0
.end method

.method public hasLightbringerButtonAppearInCollapsedCallLogItemCount()Z
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasLightbringerButtonAppearInCollapsedCallLogItemCount()Z

    move-result v0

    return v0
.end method

.method public hasLightbringerButtonAppearInExpandedCallLogItemCount()Z
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasLightbringerButtonAppearInExpandedCallLogItemCount()Z

    move-result v0

    return v0
.end method

.method public hasLightbringerButtonAppearInSearchCount()Z
    .locals 1

    .line 1337
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasLightbringerButtonAppearInSearchCount()Z

    move-result v0

    return v0
.end method

.method public hasPositionOfSelectedSearchResult()Z
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasPositionOfSelectedSearchResult()Z

    move-result v0

    return v0
.end method

.method public hasSpeedDialContactPosition()Z
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasSpeedDialContactPosition()Z

    move-result v0

    return v0
.end method

.method public hasStartingTabIndex()Z
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasStartingTabIndex()Z

    move-result v0

    return v0
.end method

.method public hasTimeSinceAppLaunch()Z
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasTimeSinceAppLaunch()Z

    move-result v0

    return v0
.end method

.method public hasTimeSinceFirstClick()Z
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData;->hasTimeSinceFirstClick()Z

    move-result v0

    return v0
.end method

.method public setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 853
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$100(Lcom/android/dialer/callintent/CallSpecificAppData;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    return-object p0
.end method

.method public setCharactersInSearchString(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 914
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 915
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$500(Lcom/android/dialer/callintent/CallSpecificAppData;I)V

    return-object p0
.end method

.method public setLightbringerButtonAppearInCollapsedCallLogItemCount(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1319
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1320
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$2900(Lcom/android/dialer/callintent/CallSpecificAppData;I)V

    return-object p0
.end method

.method public setLightbringerButtonAppearInExpandedCallLogItemCount(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1284
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1285
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$2700(Lcom/android/dialer/callintent/CallSpecificAppData;I)V

    return-object p0
.end method

.method public setLightbringerButtonAppearInSearchCount(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1350
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1351
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$3100(Lcom/android/dialer/callintent/CallSpecificAppData;I)V

    return-object p0
.end method

.method public setPositionOfSelectedSearchResult(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 883
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 884
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$300(Lcom/android/dialer/callintent/CallSpecificAppData;I)V

    return-object p0
.end method

.method public setSpeedDialContactPosition(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1000
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1001
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$1100(Lcom/android/dialer/callintent/CallSpecificAppData;I)V

    return-object p0
.end method

.method public setSpeedDialContactType(ILcom/android/dialer/callintent/SpeedDialContactType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 953
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 954
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$700(Lcom/android/dialer/callintent/CallSpecificAppData;ILcom/android/dialer/callintent/SpeedDialContactType$Type;)V

    return-object p0
.end method

.method public setStartingTabIndex(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1242
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$2500(Lcom/android/dialer/callintent/CallSpecificAppData;I)V

    return-object p0
.end method

.method public setTimeSinceAppLaunch(J)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1031
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1032
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$1300(Lcom/android/dialer/callintent/CallSpecificAppData;J)V

    return-object p0
.end method

.method public setTimeSinceFirstClick(J)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1062
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1063
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$1500(Lcom/android/dialer/callintent/CallSpecificAppData;J)V

    return-object p0
.end method

.method public setUiActionTimestampsSinceAppLaunch(IJ)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1193
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1194
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1, p2, p3}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$2100(Lcom/android/dialer/callintent/CallSpecificAppData;IJ)V

    return-object p0
.end method

.method public setUiActionsSinceAppLaunch(ILcom/android/dialer/logging/UiAction$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;
    .locals 1

    .line 1121
    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->copyOnWrite()V

    .line 1122
    iget-object v0, p0, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->access$1700(Lcom/android/dialer/callintent/CallSpecificAppData;ILcom/android/dialer/logging/UiAction$Type;)V

    return-object p0
.end method
