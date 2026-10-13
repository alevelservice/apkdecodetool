.class public final Lcom/google/firebase/m/j/d;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/google/firebase/m/i/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/m/j/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/m/i/b<",
        "Lcom/google/firebase/m/j/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lcom/google/firebase/m/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/m/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/google/firebase/m/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/m/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/google/firebase/m/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/m/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcom/google/firebase/m/j/d$b;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/m/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/m/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field private c:Lcom/google/firebase/m/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/m/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/m/j/a;->a()Lcom/google/firebase/m/e;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/m/j/d;->e:Lcom/google/firebase/m/e;

    .line 2
    invoke-static {}, Lcom/google/firebase/m/j/b;->a()Lcom/google/firebase/m/g;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/m/j/d;->f:Lcom/google/firebase/m/g;

    .line 3
    invoke-static {}, Lcom/google/firebase/m/j/c;->a()Lcom/google/firebase/m/g;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/m/j/d;->g:Lcom/google/firebase/m/g;

    .line 4
    new-instance v0, Lcom/google/firebase/m/j/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/m/j/d$b;-><init>(Lcom/google/firebase/m/j/d$a;)V

    sput-object v0, Lcom/google/firebase/m/j/d;->h:Lcom/google/firebase/m/j/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/m/j/d;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/m/j/d;->b:Ljava/util/Map;

    .line 4
    sget-object v0, Lcom/google/firebase/m/j/d;->e:Lcom/google/firebase/m/e;

    iput-object v0, p0, Lcom/google/firebase/m/j/d;->c:Lcom/google/firebase/m/e;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/m/j/d;->d:Z

    .line 6
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/google/firebase/m/j/d;->f:Lcom/google/firebase/m/g;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/m/j/d;->a(Ljava/lang/Class;Lcom/google/firebase/m/g;)Lcom/google/firebase/m/j/d;

    .line 7
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/google/firebase/m/j/d;->g:Lcom/google/firebase/m/g;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/m/j/d;->a(Ljava/lang/Class;Lcom/google/firebase/m/g;)Lcom/google/firebase/m/j/d;

    .line 8
    const-class v0, Ljava/util/Date;

    sget-object v1, Lcom/google/firebase/m/j/d;->h:Lcom/google/firebase/m/j/d$b;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/m/j/d;->a(Ljava/lang/Class;Lcom/google/firebase/m/g;)Lcom/google/firebase/m/j/d;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/m/j/d;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/m/j/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Boolean;Lcom/google/firebase/m/h;)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/firebase/m/h;->a(Z)Lcom/google/firebase/m/h;

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;Lcom/google/firebase/m/f;)V
    .locals 2

    .line 3
    new-instance p1, Lcom/google/firebase/m/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find encoder for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/firebase/m/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Ljava/lang/String;Lcom/google/firebase/m/h;)V
    .locals 0

    .line 5
    invoke-interface {p1, p0}, Lcom/google/firebase/m/h;->a(Ljava/lang/String;)Lcom/google/firebase/m/h;

    return-void
.end method

.method static synthetic b(Lcom/google/firebase/m/j/d;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/m/j/d;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/google/firebase/m/j/d;)Lcom/google/firebase/m/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/m/j/d;->c:Lcom/google/firebase/m/e;

    return-object p0
.end method

.method static synthetic d(Lcom/google/firebase/m/j/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/firebase/m/j/d;->d:Z

    return p0
.end method


# virtual methods
.method public a()Lcom/google/firebase/m/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13
    new-instance v0, Lcom/google/firebase/m/j/d$a;

    invoke-direct {v0, p0}, Lcom/google/firebase/m/j/d$a;-><init>(Lcom/google/firebase/m/j/d;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/m/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/m/j/d;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/j/d;

    return-object p0
.end method

.method public a(Lcom/google/firebase/m/i/a;)Lcom/google/firebase/m/j/d;
    .locals 0
    .param p1    # Lcom/google/firebase/m/i/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 11
    invoke-interface {p1, p0}, Lcom/google/firebase/m/i/a;->a(Lcom/google/firebase/m/i/b;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/j/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/m/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/m/e<",
            "-TT;>;)",
            "Lcom/google/firebase/m/j/d;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/firebase/m/j/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/google/firebase/m/j/d;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/google/firebase/m/g;)Lcom/google/firebase/m/j/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/m/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/m/g<",
            "-TT;>;)",
            "Lcom/google/firebase/m/j/d;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/firebase/m/j/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p2, p0, Lcom/google/firebase/m/j/d;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Z)Lcom/google/firebase/m/j/d;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 12
    iput-boolean p1, p0, Lcom/google/firebase/m/j/d;->d:Z

    return-object p0
.end method
