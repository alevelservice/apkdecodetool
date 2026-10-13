.class public final enum Le/b/b/a/a/b/h/h;
.super Ljava/lang/Enum;
.source "TrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/b/a/a/b/h/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic e:[Le/b/b/a/a/b/h/h;

.field public static final enum instance:Le/b/b/a/a/b/h/h;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/b/b/a/a/b/h/h;

    const/4 v1, 0x0

    const-string v2, "instance"

    invoke-direct {v0, v2, v1}, Le/b/b/a/a/b/h/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/b/b/a/a/b/h/h;->instance:Le/b/b/a/a/b/h/h;

    const/4 v0, 0x1

    new-array v0, v0, [Le/b/b/a/a/b/h/h;

    .line 2
    sget-object v2, Le/b/b/a/a/b/h/h;->instance:Le/b/b/a/a/b/h/h;

    aput-object v2, v0, v1

    sput-object v0, Le/b/b/a/a/b/h/h;->e:[Le/b/b/a/a/b/h/h;

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

    .line 2
    const-class p1, Le/b/b/a/a/b/h/h;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/b/b/a/a/b/h/h;->TAG:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/Object;)Le/b/b/a/a/b/h/b;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/b/b/a/a/b/h/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {}, Le/b/b/a/a/b/h/d;->c()Le/b/b/a/a/b/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/h/d;->a(Ljava/lang/Object;)Le/b/b/a/a/b/h/b;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Le/b/b/a/a/b/h/d;->c()Le/b/b/a/a/b/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/h/d;->a(Ljava/lang/Object;)Le/b/b/a/a/b/h/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    check-cast p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/b/a/a/b/h/h;
    .locals 1

    .line 1
    const-class v0, Le/b/b/a/a/b/h/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/b/a/a/b/h/h;

    return-object p0
.end method

.method public static values()[Le/b/b/a/a/b/h/h;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/a/b/h/h;->e:[Le/b/b/a/a/b/h/h;

    invoke-virtual {v0}, [Le/b/b/a/a/b/h/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/b/a/a/b/h/h;

    return-object v0
.end method


# virtual methods
.method checkIsPageBack(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-static {}, Le/b/b/a/a/b/h/d;->c()Le/b/b/a/a/b/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/h/d;->a(Ljava/lang/Object;)Le/b/b/a/a/b/h/b;

    move-result-object p1

    .line 2
    invoke-static {}, Le/b/b/a/a/b/h/d;->c()Le/b/b/a/a/b/h/d;

    move-result-object v0

    invoke-virtual {v0}, Le/b/b/a/a/b/h/d;->b()Le/b/b/a/a/b/h/b;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, v0, Le/b/b/a/a/b/h/b;->u:Le/b/b/a/a/b/h/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/b/b/a/a/b/h/b;->c:Ljava/lang/String;

    iget-object p1, p1, Le/b/b/a/a/b/h/b;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPageId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Le/b/b/a/a/b/h/h;->a(Ljava/lang/Object;)Le/b/b/a/a/b/h/b;

    move-result-object p1

    const-string v0, "C_NULL"

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v1

    iget-object v2, p0, Le/b/b/a/a/b/h/h;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPageId pageId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Le/b/b/a/a/b/h/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Le/b/b/a/a/b/h/b;->c:Ljava/lang/String;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method public getReferSpm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/b/b/a/a/b/h/h;->a(Ljava/lang/Object;)Le/b/b/a/a/b/h/b;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Le/b/b/a/a/b/h/b;->k:Ljava/lang/String;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1

    :cond_1
    return-object v0
.end method
