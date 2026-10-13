.class public final enum Le/b/b/a/a/b/h/c;
.super Ljava/lang/Enum;
.source "SpmMonitor.java"

# interfaces
.implements Le/b/b/a/a/b/h/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/b/a/a/b/h/c;",
        ">;",
        "Le/b/b/a/a/b/h/a;"
    }
.end annotation


# static fields
.field public static final enum INTANCE:Le/b/b/a/a/b/h/c;

.field private static final e:Ljava/lang/String;

.field private static final synthetic f:[Le/b/b/a/a/b/h/c;


# instance fields
.field private mTopPage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/b/b/a/a/b/h/c;

    const/4 v1, 0x0

    const-string v2, "INTANCE"

    invoke-direct {v0, v2, v1}, Le/b/b/a/a/b/h/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/b/b/a/a/b/h/c;->INTANCE:Le/b/b/a/a/b/h/c;

    const/4 v0, 0x1

    new-array v0, v0, [Le/b/b/a/a/b/h/c;

    .line 2
    sget-object v2, Le/b/b/a/a/b/h/c;->INTANCE:Le/b/b/a/a/b/h/c;

    aput-object v2, v0, v1

    sput-object v0, Le/b/b/a/a/b/h/c;->f:[Le/b/b/a/a/b/h/c;

    .line 3
    const-class v0, Le/b/b/a/a/b/h/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/b/b/a/a/b/h/c;->e:Ljava/lang/String;

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

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/b/b/a/a/b/c/d$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Le/b/b/a/a/b/c/d$a;"
        }
    .end annotation

    .line 2
    new-instance v0, Le/b/b/a/a/b/c/d$a;

    invoke-direct {v0}, Le/b/b/a/a/b/c/d$a;-><init>()V

    .line 3
    sget-object v1, Le/b/b/a/a/b/h/h;->instance:Le/b/b/a/a/b/h/h;

    invoke-virtual {v1, p1}, Le/b/b/a/a/b/h/h;->getPageId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v1

    invoke-interface {v1}, Le/b/b/a/a/a/d;->n()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/d$a;->d(Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;

    .line 6
    invoke-virtual {v0, p2}, Le/b/b/a/a/b/c/d$a;->c(Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;

    .line 7
    invoke-virtual {v0, p3}, Le/b/b/a/a/b/c/d$a;->b(Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;

    .line 8
    invoke-virtual {v0, p4}, Le/b/b/a/a/b/c/d$a;->a(Ljava/util/Map;)Le/b/b/a/a/b/c/d$a;

    .line 9
    invoke-virtual {v0, v1}, Le/b/b/a/a/b/c/d$a;->e(Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;

    .line 10
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    invoke-interface {p2, p1}, Le/b/b/a/a/a/d;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Le/b/b/a/a/b/h/d;->c()Le/b/b/a/a/b/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/h/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/b/a/a/b/h/c;
    .locals 1

    .line 1
    const-class v0, Le/b/b/a/a/b/h/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/b/a/a/b/h/c;

    return-object p0
.end method

.method public static values()[Le/b/b/a/a/b/h/c;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/a/b/h/c;->f:[Le/b/b/a/a/b/h/c;

    invoke-virtual {v0}, [Le/b/b/a/a/b/h/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/b/a/a/b/h/c;

    return-object v0
.end method


# virtual methods
.method public getTopPage()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/h/c;->mTopPage:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pageOnDestroy(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Le/b/b/a/a/b/h/d;->c()Le/b/b/a/a/b/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/h/d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public pageOnEnd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v0

    sget-object v1, Le/b/b/a/a/b/h/c;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pageOnPause spmId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 4
    :cond_0
    sget-object v0, Le/b/b/a/a/b/h/h;->instance:Le/b/b/a/a/b/h/h;

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/h/h;->getReferSpm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referSpm"

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Le/b/b/a/a/b/h/d;->c()Le/b/b/a/a/b/h/d;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Le/b/b/a/a/b/h/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Le/b/b/a/a/b/h/b;

    :cond_1
    return-void
.end method

.method public pageOnStart(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/b/b/a/a/b/h/c;->mTopPage:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Le/b/b/a/a/b/h/d;->c()Le/b/b/a/a/b/h/d;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Le/b/b/a/a/b/h/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public spmClick(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Le/b/b/a/a/b/h/c;->a(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Le/b/b/a/a/b/h/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/b/b/a/a/b/c/d$a;

    move-result-object p1

    const-string p2, "clicked"

    .line 3
    invoke-virtual {p1, p2}, Le/b/b/a/a/b/c/d$a;->a(Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;

    .line 4
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    invoke-virtual {p1}, Le/b/b/a/a/b/c/d$a;->a()Le/b/b/a/a/b/c/d;

    move-result-object p1

    invoke-interface {p2, p1}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    return-void
.end method

.method public spmExpose(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/b/b/a/a/b/h/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/b/b/a/a/b/c/d$a;

    move-result-object p1

    const-string p2, "exposure"

    .line 2
    invoke-virtual {p1, p2}, Le/b/b/a/a/b/c/d$a;->a(Ljava/lang/String;)Le/b/b/a/a/b/c/d$a;

    .line 3
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    invoke-virtual {p1}, Le/b/b/a/a/b/c/d$a;->a()Le/b/b/a/a/b/c/d;

    move-result-object p1

    invoke-interface {p2, p1}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    return-void
.end method
