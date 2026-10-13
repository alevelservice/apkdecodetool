.class public final enum Landroidx/annotation/InspectableProperty$a;
.super Ljava/lang/Enum;
.source "InspectableProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/InspectableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/annotation/InspectableProperty$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLOR:Landroidx/annotation/InspectableProperty$a;

.field public static final enum GRAVITY:Landroidx/annotation/InspectableProperty$a;

.field public static final enum INFERRED:Landroidx/annotation/InspectableProperty$a;

.field public static final enum INT_ENUM:Landroidx/annotation/InspectableProperty$a;

.field public static final enum INT_FLAG:Landroidx/annotation/InspectableProperty$a;

.field public static final enum NONE:Landroidx/annotation/InspectableProperty$a;

.field public static final enum RESOURCE_ID:Landroidx/annotation/InspectableProperty$a;

.field private static final synthetic e:[Landroidx/annotation/InspectableProperty$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroidx/annotation/InspectableProperty$a;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Landroidx/annotation/InspectableProperty$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$a;->NONE:Landroidx/annotation/InspectableProperty$a;

    .line 2
    new-instance v0, Landroidx/annotation/InspectableProperty$a;

    const/4 v2, 0x1

    const-string v3, "INFERRED"

    invoke-direct {v0, v3, v2}, Landroidx/annotation/InspectableProperty$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$a;->INFERRED:Landroidx/annotation/InspectableProperty$a;

    .line 3
    new-instance v0, Landroidx/annotation/InspectableProperty$a;

    const/4 v3, 0x2

    const-string v4, "INT_ENUM"

    invoke-direct {v0, v4, v3}, Landroidx/annotation/InspectableProperty$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$a;->INT_ENUM:Landroidx/annotation/InspectableProperty$a;

    .line 4
    new-instance v0, Landroidx/annotation/InspectableProperty$a;

    const/4 v4, 0x3

    const-string v5, "INT_FLAG"

    invoke-direct {v0, v5, v4}, Landroidx/annotation/InspectableProperty$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$a;->INT_FLAG:Landroidx/annotation/InspectableProperty$a;

    .line 5
    new-instance v0, Landroidx/annotation/InspectableProperty$a;

    const/4 v5, 0x4

    const-string v6, "COLOR"

    invoke-direct {v0, v6, v5}, Landroidx/annotation/InspectableProperty$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$a;->COLOR:Landroidx/annotation/InspectableProperty$a;

    .line 6
    new-instance v0, Landroidx/annotation/InspectableProperty$a;

    const/4 v6, 0x5

    const-string v7, "GRAVITY"

    invoke-direct {v0, v7, v6}, Landroidx/annotation/InspectableProperty$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$a;->GRAVITY:Landroidx/annotation/InspectableProperty$a;

    .line 7
    new-instance v0, Landroidx/annotation/InspectableProperty$a;

    const/4 v7, 0x6

    const-string v8, "RESOURCE_ID"

    invoke-direct {v0, v8, v7}, Landroidx/annotation/InspectableProperty$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/InspectableProperty$a;->RESOURCE_ID:Landroidx/annotation/InspectableProperty$a;

    const/4 v0, 0x7

    new-array v0, v0, [Landroidx/annotation/InspectableProperty$a;

    .line 8
    sget-object v8, Landroidx/annotation/InspectableProperty$a;->NONE:Landroidx/annotation/InspectableProperty$a;

    aput-object v8, v0, v1

    sget-object v1, Landroidx/annotation/InspectableProperty$a;->INFERRED:Landroidx/annotation/InspectableProperty$a;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/annotation/InspectableProperty$a;->INT_ENUM:Landroidx/annotation/InspectableProperty$a;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/annotation/InspectableProperty$a;->INT_FLAG:Landroidx/annotation/InspectableProperty$a;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/annotation/InspectableProperty$a;->COLOR:Landroidx/annotation/InspectableProperty$a;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/annotation/InspectableProperty$a;->GRAVITY:Landroidx/annotation/InspectableProperty$a;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/annotation/InspectableProperty$a;->RESOURCE_ID:Landroidx/annotation/InspectableProperty$a;

    aput-object v1, v0, v7

    sput-object v0, Landroidx/annotation/InspectableProperty$a;->e:[Landroidx/annotation/InspectableProperty$a;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/InspectableProperty$a;
    .locals 1

    .line 1
    const-class v0, Landroidx/annotation/InspectableProperty$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/annotation/InspectableProperty$a;

    return-object p0
.end method

.method public static values()[Landroidx/annotation/InspectableProperty$a;
    .locals 1

    .line 1
    sget-object v0, Landroidx/annotation/InspectableProperty$a;->e:[Landroidx/annotation/InspectableProperty$a;

    invoke-virtual {v0}, [Landroidx/annotation/InspectableProperty$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/InspectableProperty$a;

    return-object v0
.end method
