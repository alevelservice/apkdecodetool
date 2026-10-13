.class public final enum Lcom/dexterous/flutterlocalnotifications/RepeatInterval;
.super Ljava/lang/Enum;
.source "RepeatInterval.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dexterous/flutterlocalnotifications/RepeatInterval;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

.field public static final enum Daily:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

.field public static final enum EveryMinute:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

.field public static final enum Hourly:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

.field public static final enum Weekly:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    const/4 v1, 0x0

    const-string v2, "EveryMinute"

    invoke-direct {v0, v2, v1}, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;->EveryMinute:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    .line 2
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    const/4 v2, 0x1

    const-string v3, "Hourly"

    invoke-direct {v0, v3, v2}, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;->Hourly:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    .line 3
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    const/4 v3, 0x2

    const-string v4, "Daily"

    invoke-direct {v0, v4, v3}, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;->Daily:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    .line 4
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    const/4 v4, 0x3

    const-string v5, "Weekly"

    invoke-direct {v0, v5, v4}, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;->Weekly:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    .line 5
    sget-object v5, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;->EveryMinute:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    aput-object v5, v0, v1

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;->Hourly:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;->Daily:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;->Weekly:Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexterous/flutterlocalnotifications/RepeatInterval;
    .locals 1

    .line 1
    const-class v0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    return-object p0
.end method

.method public static values()[Lcom/dexterous/flutterlocalnotifications/RepeatInterval;
    .locals 1

    .line 1
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/RepeatInterval;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    invoke-virtual {v0}, [Lcom/dexterous/flutterlocalnotifications/RepeatInterval;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexterous/flutterlocalnotifications/RepeatInterval;

    return-object v0
.end method
