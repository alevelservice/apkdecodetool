.class public final enum Lcom/dexterous/flutterlocalnotifications/NotificationStyle;
.super Ljava/lang/Enum;
.source "NotificationStyle.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dexterous/flutterlocalnotifications/NotificationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

.field public static final enum BigPicture:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

.field public static final enum BigText:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

.field public static final enum Default:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

.field public static final enum Inbox:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

.field public static final enum Media:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

.field public static final enum Messaging:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    const/4 v1, 0x0

    const-string v2, "Default"

    invoke-direct {v0, v2, v1}, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->Default:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    .line 2
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    const/4 v2, 0x1

    const-string v3, "BigPicture"

    invoke-direct {v0, v3, v2}, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->BigPicture:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    .line 3
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    const/4 v3, 0x2

    const-string v4, "BigText"

    invoke-direct {v0, v4, v3}, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->BigText:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    .line 4
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    const/4 v4, 0x3

    const-string v5, "Inbox"

    invoke-direct {v0, v5, v4}, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->Inbox:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    .line 5
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    const/4 v5, 0x4

    const-string v6, "Messaging"

    invoke-direct {v0, v6, v5}, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->Messaging:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    .line 6
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    const/4 v6, 0x5

    const-string v7, "Media"

    invoke-direct {v0, v7, v6}, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->Media:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    .line 7
    sget-object v7, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->Default:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    aput-object v7, v0, v1

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->BigPicture:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->BigText:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->Inbox:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->Messaging:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->Media:Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexterous/flutterlocalnotifications/NotificationStyle;
    .locals 1

    .line 1
    const-class v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    return-object p0
.end method

.method public static values()[Lcom/dexterous/flutterlocalnotifications/NotificationStyle;
    .locals 1

    .line 1
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->$VALUES:[Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    invoke-virtual {v0}, [Lcom/dexterous/flutterlocalnotifications/NotificationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexterous/flutterlocalnotifications/NotificationStyle;

    return-object v0
.end method
