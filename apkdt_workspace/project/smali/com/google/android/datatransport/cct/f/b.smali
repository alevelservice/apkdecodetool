.class public final Lcom/google/android/datatransport/cct/f/b;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Lcom/google/firebase/m/i/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/f/b$f;,
        Lcom/google/android/datatransport/cct/f/b$d;,
        Lcom/google/android/datatransport/cct/f/b$a;,
        Lcom/google/android/datatransport/cct/f/b$c;,
        Lcom/google/android/datatransport/cct/f/b$e;,
        Lcom/google/android/datatransport/cct/f/b$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/m/i/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/f/b;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/f/b;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/f/b;->a:Lcom/google/firebase/m/i/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/m/i/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/m/i/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/datatransport/cct/f/j;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$b;->a:Lcom/google/android/datatransport/cct/f/b$b;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    .line 2
    const-class v0, Lcom/google/android/datatransport/cct/f/d;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$b;->a:Lcom/google/android/datatransport/cct/f/b$b;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    .line 3
    const-class v0, Lcom/google/android/datatransport/cct/f/m;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$e;->a:Lcom/google/android/datatransport/cct/f/b$e;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    .line 4
    const-class v0, Lcom/google/android/datatransport/cct/f/g;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$e;->a:Lcom/google/android/datatransport/cct/f/b$e;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    .line 5
    const-class v0, Lcom/google/android/datatransport/cct/f/k;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$c;->a:Lcom/google/android/datatransport/cct/f/b$c;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    .line 6
    const-class v0, Lcom/google/android/datatransport/cct/f/e;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$c;->a:Lcom/google/android/datatransport/cct/f/b$c;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    .line 7
    const-class v0, Lcom/google/android/datatransport/cct/f/a;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$a;->a:Lcom/google/android/datatransport/cct/f/b$a;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    .line 8
    const-class v0, Lcom/google/android/datatransport/cct/f/c;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$a;->a:Lcom/google/android/datatransport/cct/f/b$a;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    .line 9
    const-class v0, Lcom/google/android/datatransport/cct/f/l;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$d;->a:Lcom/google/android/datatransport/cct/f/b$d;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    .line 10
    const-class v0, Lcom/google/android/datatransport/cct/f/f;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$d;->a:Lcom/google/android/datatransport/cct/f/b$d;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    .line 11
    const-class v0, Lcom/google/android/datatransport/cct/f/o;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$f;->a:Lcom/google/android/datatransport/cct/f/b$f;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    .line 12
    const-class v0, Lcom/google/android/datatransport/cct/f/i;

    sget-object v1, Lcom/google/android/datatransport/cct/f/b$f;->a:Lcom/google/android/datatransport/cct/f/b$f;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/m/i/b;->a(Ljava/lang/Class;Lcom/google/firebase/m/e;)Lcom/google/firebase/m/i/b;

    return-void
.end method
