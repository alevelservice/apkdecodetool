.class final enum Le/f/d/a$c;
.super Ljava/lang/Enum;
.source "AbstractDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/f/d/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAILURE:Le/f/d/a$c;

.field public static final enum IN_PROGRESS:Le/f/d/a$c;

.field public static final enum SUCCESS:Le/f/d/a$c;

.field private static final synthetic e:[Le/f/d/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/f/d/a$c;

    const/4 v1, 0x0

    const-string v2, "IN_PROGRESS"

    invoke-direct {v0, v2, v1}, Le/f/d/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/d/a$c;->IN_PROGRESS:Le/f/d/a$c;

    .line 2
    new-instance v0, Le/f/d/a$c;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2}, Le/f/d/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/d/a$c;->SUCCESS:Le/f/d/a$c;

    .line 3
    new-instance v0, Le/f/d/a$c;

    const/4 v3, 0x2

    const-string v4, "FAILURE"

    invoke-direct {v0, v4, v3}, Le/f/d/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/d/a$c;->FAILURE:Le/f/d/a$c;

    const/4 v0, 0x3

    new-array v0, v0, [Le/f/d/a$c;

    .line 4
    sget-object v4, Le/f/d/a$c;->IN_PROGRESS:Le/f/d/a$c;

    aput-object v4, v0, v1

    sget-object v1, Le/f/d/a$c;->SUCCESS:Le/f/d/a$c;

    aput-object v1, v0, v2

    sget-object v1, Le/f/d/a$c;->FAILURE:Le/f/d/a$c;

    aput-object v1, v0, v3

    sput-object v0, Le/f/d/a$c;->e:[Le/f/d/a$c;

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

.method public static valueOf(Ljava/lang/String;)Le/f/d/a$c;
    .locals 1

    .line 1
    const-class v0, Le/f/d/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/f/d/a$c;

    return-object p0
.end method

.method public static values()[Le/f/d/a$c;
    .locals 1

    .line 1
    sget-object v0, Le/f/d/a$c;->e:[Le/f/d/a$c;

    invoke-virtual {v0}, [Le/f/d/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/f/d/a$c;

    return-object v0
.end method
