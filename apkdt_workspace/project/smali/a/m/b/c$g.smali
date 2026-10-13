.class public final enum La/m/b/c$g;
.super Ljava/lang/Enum;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/m/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/m/b/c$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FINISHED:La/m/b/c$g;

.field public static final enum PENDING:La/m/b/c$g;

.field public static final enum RUNNING:La/m/b/c$g;

.field private static final synthetic e:[La/m/b/c$g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, La/m/b/c$g;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, La/m/b/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/m/b/c$g;->PENDING:La/m/b/c$g;

    .line 2
    new-instance v0, La/m/b/c$g;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, La/m/b/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/m/b/c$g;->RUNNING:La/m/b/c$g;

    .line 3
    new-instance v0, La/m/b/c$g;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, La/m/b/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/m/b/c$g;->FINISHED:La/m/b/c$g;

    const/4 v0, 0x3

    new-array v0, v0, [La/m/b/c$g;

    .line 4
    sget-object v4, La/m/b/c$g;->PENDING:La/m/b/c$g;

    aput-object v4, v0, v1

    sget-object v1, La/m/b/c$g;->RUNNING:La/m/b/c$g;

    aput-object v1, v0, v2

    sget-object v1, La/m/b/c$g;->FINISHED:La/m/b/c$g;

    aput-object v1, v0, v3

    sput-object v0, La/m/b/c$g;->e:[La/m/b/c$g;

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

.method public static valueOf(Ljava/lang/String;)La/m/b/c$g;
    .locals 1

    .line 1
    const-class v0, La/m/b/c$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/m/b/c$g;

    return-object p0
.end method

.method public static values()[La/m/b/c$g;
    .locals 1

    .line 1
    sget-object v0, La/m/b/c$g;->e:[La/m/b/c$g;

    invoke-virtual {v0}, [La/m/b/c$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/m/b/c$g;

    return-object v0
.end method
