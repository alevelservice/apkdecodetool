.class final synthetic Lcom/google/firebase/iid/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.0.1"

# interfaces
.implements Le/i/b/b/d/a;


# static fields
.field static final a:Le/i/b/b/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/iid/d;

    invoke-direct {v0}, Lcom/google/firebase/iid/d;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/d;->a:Le/i/b/b/d/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/i/b/b/d/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/iid/f;->a(Le/i/b/b/d/h;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
