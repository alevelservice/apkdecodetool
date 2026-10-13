.class public Lorg/junit/a/a;
.super Ljava/lang/Object;
.source "MethodSorter.java"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/a/a$a;

    invoke-direct {v0}, Lorg/junit/a/a$a;-><init>()V

    sput-object v0, Lorg/junit/a/a;->a:Ljava/util/Comparator;

    .line 2
    new-instance v0, Lorg/junit/a/a$b;

    invoke-direct {v0}, Lorg/junit/a/a$b;-><init>()V

    sput-object v0, Lorg/junit/a/a;->b:Ljava/util/Comparator;

    return-void
.end method
